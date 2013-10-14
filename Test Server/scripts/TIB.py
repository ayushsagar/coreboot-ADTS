#!/usr/bin/env python

##
## This file is part of the coreboot project.
##
## Copyright (C) 2013 Ayush Sagar <ayush@ieee.org>
##
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
##
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with this program; if not, write to the Free Software
## Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301 USA
##
## Use of the included libraries is under the terms of their respective licenses.
##

##
## -----------------------------
## COREBOOT TEST INTERFACE BOARD
## -----------------------------
## This is a script to talk to coreboot Test Interface Board.
##

## Last Revised on: 15 Sep 2013

import serial, sys, argparse, time

# parse command line parameters
parser = argparse.ArgumentParser(description='Command line interface for the arduino based coreboot test interface board')
parser.add_argument('devicePath', help='Device path e.g. /dev/ttyUSB0')
parser.add_argument('operation', choices=['getVCCP','getVCCF','getVCCM','getA3','getA4','getA5','getVGASyncFreq','isVGASyncOn','getICP','toggleICP','pressPWR','pressRST','longPressPWR', 'longPressRST','getPWRLED'], help='command character to be sent')
args = parser.parse_args()

def main(devicePath, operation):
    # establish connection
    try:
        # create an instance of TIB serial device
        TIB = serial.Serial(devicePath, timeout=0.1) # arguments (port=None, baudrate=9600, bytesize=EIGHTBITS, parity=PARITY_NONE, stopbits=STOPBITS_ONE, timeout=None, xonxoff=False, rtscts=False, writeTimeout=None, dsrdtr=False, interCharTimeout=None)
        time.sleep(0.1) # to give some time before a command is executed
    except:
        print 'Connection failed'
        sys.exit(1)

    # execute given operation
    try:
        if operation=='getVCCP':
            # talk and get response
            response = interpret_string(talk(TIB, 'P', 4))
            # check validity of response and print output
            if response >= 0 and response < 50:
                print response
            else:
                raise Exception
        elif operation=='getVCCF':
            # talk and get response
            response = interpret_string(talk(TIB, 'F', 4))
            # check validity of response and print output
            if response >= 0 and response < 50:
                print response
            else:
                raise Exception
        elif operation=='getVCCM':
            # talk and get response
            response = interpret_string(talk(TIB, 'M', 4))
            # check validity of response and print output
            if response >= 0 and response < 50:
                print response
            else:
                raise Exception
        elif operation=='getA3':
            # talk and get response
            response = interpret_string(talk(TIB, '3', 4))
            # check validity of response and print output
            if (response) >= 0 and response < 50:
                print response
            else:
                raise Exception
        elif operation=='getA4':
            # talk and get response
            response = interpret_string(talk(TIB, '4', 4))
            # check validity of response and print output
            if response >= 0 and response < 50:
                print response
            else:
                raise Exception
        elif operation=='getA5':
            # talk and get response
            response = interpret_string(talk(TIB, '5', 4))
            # check validity of response and print output
            if response >= 0 and response < 50:
                print response
            else:
                raise Exception 
        elif operation=='getVGASyncFreq':
            # talk and get response
            response = talk(TIB, 'f' ,13)
            # check validity of response and print output
            if response[0]=='(' and ',' in response and response[-1]==')' in response:
                print response
            else:
                raise Exception
        elif operation=='isVGASyncOn':
            # talk and get response
            response = talk(TIB, 'v', 1)
            # check validity of response and print output
            if response == '1':
                print 'VGA Sync is on'
            elif response == '0':
                print 'VGA Sync is off'
            else:
                raise Exception
        elif operation=='getICP':
            # talk and get response
            response = talk(TIB, 'i', 1)
            # check validity of response and print output
            if response == '1':
                print 'ICP is on'
            elif response == '0':
                print 'ICP is off'
            else:
                raise Exception
        elif operation=='toggleICP':
            # talk
            talk(TIB, 'I', 0)
        elif operation=='pressPWR':
            # talk
            talk(TIB, 'p', 0)
        elif operation=='pressRST':
            # talk
            talk(TIB, 'r', 0)
        elif operation=='longPressPWR':
            # talk
            talk(TIB, 'ppppppppp', 0)
        elif operation=='longPressRST':
            # talk
            talk(TIB, 'rrrrrrrrr', 0)
        elif operation=='getPWRLED':
            # talk and get response
            response = talk(TIB, 'l', 1)
            # check validity of response and print output
            if response == '1':
                print 'Power LED is on'
            elif response == '0':
                print 'Power LED is off'
            else:
                raise Exception
             
    except:
        print 'Operation failed'
        print sys.exc_value
        sys.exit(2)

def talk(serialDevice, sendString, maxExpectedCharCount):
    """
    Sends a string to the given serial device and returns received string.
    If the received string length exceeds the maximum expected character count
    the function raises an exception
    """
    # flush buffers
    serialDevice.flushInput(); serialDevice.flushOutput()
    # write the given string to the serial device
    serialDevice.write(sendString)
    receiveString = ''
    loopWatch = 0
    # if data to be received
    if maxExpectedCharCount > 0:
        # additional wait for VGA operations
        if (sendString == 'f' or sendString == 'v'): time.sleep(1)
        # if data available on receive buffer
        while serialDevice.inWaiting > 0:
            # pop out a byte from the serial buffer and save it to a variable
            receiveChar = serialDevice.read(1)
            # if it's an escape character
            if receiveChar == '\r' or receiveChar == '\n':
                # flush buffers
                serialDevice.flushInput(); serialDevice.flushOutput()
                # and break the loop
                break
            else:
                # else append the character to a string
                receiveString += receiveChar
            # if received string is longer than expected
            if len(receiveString) > maxExpectedCharCount:
                # flush buffers
                serialDevice.flushInput(); serialDevice.flushOutput()
                # raise exception
                raise Exception
            # loop watcher to avoid getting stuck in the loop
            loopWatch += 1
            if loopWatch > 20: break
    return receiveString

def interpret_string(s):
    '''
    take a string and try to convert it to int or float as appropriate,
    if failed return the input string
    '''
    if not isinstance(s, str):
        return str(s)
    if s.isdigit():
        return int(s)
    try:
        return float(s)
    except:
        return s

if __name__ == "__main__":
    main(args.devicePath, args.operation)
