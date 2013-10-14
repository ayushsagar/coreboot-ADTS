/*
 * This file is part of the coreboot project.
 *
 * Copyright (C) 2013 Ayush Sagar <ayush@ieee.org>
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
 */

/* 
 * -----------------------------
 * COREBOOT TEST INTERFACE BOARD
 * -----------------------------
 * Tested on Arduino UNO using Arduino IDE v.1.0.5
 * Last revised on 15 Sep 2013
 */


//     Pin assignments

#define pinICP 4
#define pinPowerSwitch 5
#define pinResetSwitch 6
#define pinPowerLED 7
#define pinVCCP A0
#define pinVCCF A1
#define pinVCCM A2

// Note: HSync and VSync pins are assigned to pins 2 and 3 using attachInterrupt() in beginFreqCounter()


//     ADC related

  /* INTERNAL ADC VOLTAGE REFERENCE (important)
  Set 1.1V for Atmega168/328 and 2.56 for Atmega32U4 
  e.g. for Uno, Duemilanove set 1.1V and for Leonardo set 2.56V. See the chip name on your board and refer to its datasheet*/
#define internalAnalogReference 1.1

// sets voltage divider resistances in ohms. Use tight tolerance resistors to ensure accuracy of ADC readings.
#define upperResistance 10000  // connected across measured voltage and ADC input.
#define lowerResistance 470    // connected across ADC input and ground.


//     Sync frequency counter

  // stores count of HS/VS pulses in given time window
volatile unsigned long HSPulseCount = 0;
volatile unsigned long VSPulseCount = 0;

  // stores HSync and VSync frequency in Hz
unsigned long HSync = 0;
unsigned long VSync = 0;

  // sets timer limit in msec for HSync and VSync frequency counter
#define fcTimerLimit 500

  // timer for freq. calculations
unsigned long fcTimer;

  // flag to convey state of counter
boolean flagCounterActive = false;

  // flag that conveys whether to print sync frequency or sync presence
boolean flagPrintFreq;

  // Valid sync limits
#define VSyncLB  40
#define VSyncUB  125
#define HSyncLB  14000
#define HSyncUB  90000


//    Other declarations

  // init ICP mode flag (in circuit programming)
boolean flagICP = false;

  // sets the unit switch press time in milliseconds
#define switchPressUnit 500;

  // init power and reset switch flags
boolean flagPWR_SW;
boolean flagRST_SW;

  // time holder for switch release/deactivation
unsigned long powerSwitchReleaseTime;
unsigned long resetSwitchReleaseTime;


void setup()
{
  // start serial at 9600 bps, 8 bits, no parity, 1 stop bit
  Serial.begin(9600);
  
  // set pin modes for ICP and power LED pins.
  pinMode(pinICP, OUTPUT);
  pinMode(pinPowerLED, INPUT_PULLUP);  //internal pull-up is required to translate open-drain output of PWR_LED signal source.
  
  // set ADC reference to internal
  analogReference(INTERNAL);  //set ADC reference to internal

  // set ICP mode depending on flag initialization
  if (flagICP) digitalWrite(pinICP, HIGH); 
  else digitalWrite(pinICP, LOW);
  
  // init power and reset button flags and outputs
  flagPWR_SW = false;
  openDrainOutput(pinPowerSwitch, false);
  flagRST_SW = false;
  openDrainOutput(pinResetSwitch, false);

}


void loop()
{
  // check if data bytes are available on serial port. If true, pop a byte from 
  // serial FIFO buffer and send it to command interpreter.
  if (Serial.available() > 0) commandInterpreter(Serial.read());
    
  // check if sync frequency counter is active and timer has finished. If true, end counter.
  if ( flagCounterActive and (millis() - fcTimer >= fcTimerLimit) ) endFreqCounter();

  // check if power switch is activated and whether activation time has passed. If true, deactivate it.
  if (flagPWR_SW and (millis() > powerSwitchReleaseTime))
  {
    flagPWR_SW = false;
    openDrainOutput(pinPowerSwitch, false); 
  }   

  // check if reset switch is activated and whether activation time has passed. If true, deactivate it.
  if (flagRST_SW and (millis() > resetSwitchReleaseTime))
  {
    flagRST_SW = false;
    openDrainOutput(pinResetSwitch, false); 
  }   
}


// command interpreter that checks for vaild command byte and executes the given command
void commandInterpreter(char command)
{
  switch(command)
  {
    case 'P':
      //print VCCP voltage, rounded to 1 decimal digit
      printFloat(getVoltage(pinVCCP), 1);
      break;
    
    case 'F':
      //print VCCF voltage, rounded to 1 decimal digit
      printFloat(getVoltage(pinVCCF), 1);
      break;
    
    case 'M':
      //print VCCM voltage, rounded to 1 decimal digit
      printFloat(getVoltage(pinVCCM), 1);
      break;
    
    case '3':
      //print A3 voltage, rounded to 1 decimal digit
      printFloat(getVoltage(A3), 1);
      break;
    
    case '4':
      //print A4 voltage, rounded to 1 decimal digit
      printFloat(getVoltage(A4), 1);
      break;
    
    case '5':
      //print A5 voltage, rounded to 1 decimal digit
      printFloat(getVoltage(A5), 1);
      break;
    
    case 'f':  //print HSync,VSync freq in Hz
      flagPrintFreq = true;
      beginFreqCounter();
      break;
              
    case 'v': //print whether VGA is present
      flagPrintFreq = false;
      beginFreqCounter();
      break;
 
    case 'i':  //get ICP mode
      Serial.println(flagICP ? '1':'0');
      break;
      
    case 'I':  //toggle ICP mode
      if (flagICP)
      {
        digitalWrite(pinICP, LOW);
        flagICP = false;
      }
      else
      {
        digitalWrite(pinICP, HIGH);
        flagICP = true;
      }
      break;
      
    case 'p':  //activate soft power switch for 500ms
      if (flagPWR_SW)
      {
        powerSwitchReleaseTime += switchPressUnit;
      }
      else
      {
        powerSwitchReleaseTime = millis() + switchPressUnit;
        openDrainOutput(pinPowerSwitch, true);
        flagPWR_SW = true;
      }
      break;

    case 'r':  //activate reset switch for 500ms
      if (flagRST_SW)
      {
        resetSwitchReleaseTime += switchPressUnit;
      }
      else
      {
        resetSwitchReleaseTime = millis() + switchPressUnit;
        openDrainOutput(pinResetSwitch, true);
        flagRST_SW = true;
      }
      break;

    case 'l': //get power LED state
      if (digitalRead(pinPowerLED) == HIGH)
      {
        Serial.println('0');
      }
      else
      {
        Serial.println('1');
      }
      
      break;
  }
}


// HSync pulse counting interrupt service routine
void incrementHSPulseCount()
{
  HSPulseCount++;
}


// VSync pulse counting interrupt service routine
void incrementVSPulseCount()
{
  VSPulseCount++;
}


// starts sync frequency counter. 
void beginFreqCounter()
{
  // reset timer and counters
  fcTimer = millis();
  HSPulseCount = 0;
  VSPulseCount = 0;

  // enable frequency counter interrupts
  attachInterrupt(0, incrementHSPulseCount, FALLING); // falling edge on pin 2 calls increment function for HSync counter
  attachInterrupt(1, incrementVSPulseCount, FALLING); // falling edge on pin 3 calls increment function for VSync counter
  
  // convey to loop() that counter is active
  flagCounterActive = true;
}


// ends sync frequency counter and prints out the result
void endFreqCounter()
{
  // Count pulses and calculate frequency
  HSync = HSPulseCount * (1000 / float(fcTimerLimit));
  VSync = VSPulseCount * (1000 / float(fcTimerLimit));
  
  //remove interrupts
  detachInterrupt(0);
  detachInterrupt(1);
 
  // check for result type
  if (flagPrintFreq)
  {
    //print frequencies
    Serial.print('(');
    Serial.print(HSync);
    Serial.print(',');
    Serial.print(VSync);
    Serial.println(')');
  }
  else
  {
    // determine if sync frequencies are in correct range and print VGA presence
    if ( VSyncLB < VSync and VSync < VSyncUB and HSyncLB < HSync and HSync < HSyncUB) Serial.println('1');
    else Serial.println('0');
    
  }  
  // set counter state to inactive
  flagCounterActive = false;
}


// sorts given array. This is used in mode filtering
void isort(short *a, short n){
// *a is an array pointer function
  for (short i = 1; i < n; ++i)
  {
    short j = a[i];
    short k;
    for (k = i - 1; (k >= 0) and (j < a[k]); k--)
    {
      a[k + 1] = a[k];
    }
    a[k + 1] = j;
  }
}


// returns the mode of given array or return median if there's no mode.
// (thanks to Arduino Playground)
short mode(short *x,short n){
  short i = 0;
  short count = 0;
  short maxCount = 0;
  short mode = 0;
  short bimodal;
  short prevCount = 0;
  while(i<(n-1))
  {
    prevCount=count;
    count=0;
    while(x[i]==x[i+1])
    {
      count++;
      i++;
    }
    if(count>prevCount&count>maxCount)
    {
      mode=x[i];
      maxCount=count;
      bimodal=0;
    }
    if(count==0){
      i++;
    }
    if(count==maxCount)  // If the sample array has 2 or more modes.
    {
      bimodal=1;
    }
    if(mode==0||bimodal==1)  // Return the median if there is no unique mode.
    {
      mode=x[(n/2)];
    }
    return mode;
  }
}


// takes samples from ADC on the given pin and applies 
// mode function to get a concordant value
short filteredAnalogRead(short pin)
{
  #define sampleArraySize 6  // set sample count for mode filtering
  
  short sampleArray[sampleArraySize];
  for(short i=0; i < sampleArraySize; i++)
  {
    sampleArray[i] = analogRead(pin);
    delay(1);
  }
  // sort array
  isort(sampleArray, sampleArraySize);
  // return mode
  return mode(sampleArray, sampleArraySize);
}


// calculates voltage on given analog pin
float getVoltage(short pin)
{
  return float(filteredAnalogRead(pin))/1023 * (upperResistance + lowerResistance) / lowerResistance * internalAnalogReference; 
}


// emulates open drain output on power and reset switch outputs
void openDrainOutput(int pin, boolean activate)
{
  if (activate) //if activate is true, set pin to Lo-Z
  {
    digitalWrite(pin, LOW);
    pinMode(pin, OUTPUT);
  }
  else  //else set pin to Hi-Z
  {
    digitalWrite(pin, LOW);
    pinMode(pin, INPUT);
  }
}


// prints out the float 'value' rounded to 'places' places after 
// the decimal point. (Thanks to Arduino Playground)
void printFloat(float value, int places) {
  // this is used to cast digits 
  int digit;
  float tens = 0.1;
  int tenscount = 0;
  int i;
  float tempfloat = value;

  // calculate rounding term d:   0.5/pow(10,places)  
  float d = 0.5;
  if (value < 0)
    d *= -1.0;
  
  // divide by ten for each decimal place
  for (i = 0; i < places; i++)
    d/= 10.0;    
  
  // this small addition, combined with truncation will round our values properly 
  tempfloat +=  d;

  // first get value tens to be the large power of ten less than value
  // tenscount isn't necessary but it would be useful if you wanted to know after this how many chars the number will take

  if (value < 0)
    tempfloat *= -1.0;
  while ((tens * 10.0) <= tempfloat) {
    tens *= 10.0;
    tenscount += 1;
  }

  // write out the negative if needed
  if (value < 0)
    Serial.print('-');

  if (tenscount == 0)
    Serial.print(0, DEC);

  for (i=0; i< tenscount; i++) {
    digit = (int) (tempfloat/tens);
    Serial.print(digit, DEC);
    tempfloat = tempfloat - ((float)digit * tens);
    tens /= 10.0;
  }

  // if no places after decimal, stop now and return
  if (places <= 0)
    return;

  // otherwise, write the point and continue on
  Serial.print('.');  

  // now write out each decimal place by shifting digits one by one into the ones place and writing the truncated value
  for (i = 0; i < places; i++) {
    tempfloat *= 10.0; 
    digit = (int) tempfloat;
    Serial.print(digit,DEC);  
    // once written, subtract off that digit
    tempfloat = tempfloat - (float) digit; 
  }
  Serial.print("\r\n"); //print carriage return and line feed as println() does
}
