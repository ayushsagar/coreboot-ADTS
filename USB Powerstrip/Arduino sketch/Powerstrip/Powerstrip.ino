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
 * ---------------------------------------------------------------------
 * USB MODBUS POWER-STRIP for COREBOOT AUTOMATED DISTRIBUTED TEST SYSTEM
 * ---------------------------------------------------------------------
 * based on the arduino-modbus-slave library by Jason Vreeland released on 3/7/2010 under GNU license
 * Tested on Arduino UNO using Arduino IDE v.1.0.5
 * Last revised on 15 Sep 2013
 */

#include <modbus.h>
#include <modbusDevice.h>
#include <modbusRegBank.h>
#include <modbusSlave.h>

#define pinS1 2
#define pinS2 3
#define pinS3 4
#define pinS4 5
#define pinS5 6
#define pinS6 7
#define pinS7 8
#define pinS8 9
#define pinS9 10
#define pinS10 11
#define pinS11 12
#define pinS12 13

// 9600 baud to be chosen with 8 data bits, no parity, 1 stop bit (9600 8-N-1).

// setup register bank
modbusDevice regBank;

// Create the modbus slave protocol handler
modbusSlave slave;

void setup()
{   

// assign the modbus slave ID.
  regBank.setId(1);

/*modbus registers follow the following format
00001-09999  Coils (Digital Outputs), A master device can read and write to these registers
10001-19999  Discrete Inputs (Digital Inputs), A master device can only read the values from these registers
30001-39999  Input Registers (Analog Inputs), A master device can only read the values from these registers
40001-49999  Holding Registers (Analog Outputs), A master device can read and write to these registers 
Analog values are 16 bit unsigned words stored with a range of 0-32767
Digital values are stored as bytes, a zero value is OFF and any nonzer value is ON*/

// Add Digital Output registers (Coils) 00001-00012 to the register bank*/
  regBank.add(1);
  regBank.add(2);
  regBank.add(3);
  regBank.add(4);
  regBank.add(5);
  regBank.add(6);
  regBank.add(7);
  regBank.add(8);
  regBank.add(9);
  regBank.add(10);
  regBank.add(11);
  regBank.add(12);

// initialise coil values to 1 due to configuration of the circuit
  regBank.set(1, 1);
  regBank.set(2, 1);
  regBank.set(3, 1);
  regBank.set(4, 1);
  regBank.set(5, 1);
  regBank.set(6, 1);
  regBank.set(7, 1);
  regBank.set(8, 1);
  regBank.set(9, 1);
  regBank.set(10, 1);
  regBank.set(11, 1);
  regBank.set(12, 1);

/*Assign the modbus device object to the protocol handler
This is where the protocol handler will look to read and write
register data.  Currently, a modbus slave protocol handler may
only have one device assigned to it.*/

  slave._device = &regBank;

// initialize the serial port for coms at 9600 baud
  slave.setBaud(9600);   

// initialize Arduino IO pins
  pinMode(pinS1, OUTPUT);
  pinMode(pinS2, OUTPUT);
  pinMode(pinS3, OUTPUT);
  pinMode(pinS4, OUTPUT);
  pinMode(pinS5, OUTPUT);
  pinMode(pinS6, OUTPUT);
  pinMode(pinS7, OUTPUT);
  pinMode(pinS8, OUTPUT);
  pinMode(pinS9, OUTPUT);
  pinMode(pinS10, OUTPUT);
  pinMode(pinS11, OUTPUT);
  pinMode(pinS12, OUTPUT);
}

void loop()
{
  // keep updating output pins
  digitalWrite(pinS1, (regBank.get(1)==0) ? HIGH : LOW);
  digitalWrite(pinS2, (regBank.get(2)==0) ? HIGH : LOW);
  digitalWrite(pinS3, (regBank.get(3)==0) ? HIGH : LOW);
  digitalWrite(pinS4, (regBank.get(4)==0) ? HIGH : LOW);
  digitalWrite(pinS5, (regBank.get(5)==0) ? HIGH : LOW);
  digitalWrite(pinS6, (regBank.get(6)==0) ? HIGH : LOW);
  digitalWrite(pinS7, (regBank.get(7)==0) ? HIGH : LOW);
  digitalWrite(pinS8, (regBank.get(8)==0) ? HIGH : LOW);
  digitalWrite(pinS9, (regBank.get(9)==0) ? HIGH : LOW);
  digitalWrite(pinS10, (regBank.get(10)==0) ? HIGH : LOW);
  digitalWrite(pinS11, (regBank.get(11)==0) ? HIGH : LOW);
  digitalWrite(pinS12, (regBank.get(12)==0) ? HIGH : LOW);
  slave.run();
}
