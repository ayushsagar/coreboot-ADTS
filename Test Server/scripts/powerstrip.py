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
## ---------------------------------------------------------------------
## USB MODBUS POWER-STRIP for COREBOOT AUTOMATED DISTRIBUTED TEST SYSTEM
## ---------------------------------------------------------------------
## This is a script to talk to USB Modbus Power-strip using the minimalmodbus
## library.
##

## Last Revised on: 15 Sep 2013

import os, sys, minimalmodbus, argparse

# choose no. of switch in the given power strip model
switchNum=6

# parse command line paramenters
parser = argparse.ArgumentParser(description=\
                                 'Modbus master for Modbus USB Power Strip. \
                                 Reads and writes to specified switch relay coils')
parser.add_argument('devicePath', help='Device path e.g. /dev/ttyUSB0')
parser.add_argument('switchId', type=int, choices=range(switchNum+1), help='Select switch number 1-' + str(switchNum) + ' on the power strip. Switch number 0 is used to select all switches for turn_on or turn_off operations')
parser.add_argument('operation', choices=['read','turn_on', 'turn_off'], help='Performs given operation on the chosen switch')                
args = parser.parse_args()

def main(devicePath, switchId, operation):
    # to ensure that the port closes after each call
    minimalmodbus.CLOSE_PORT_AFTER_EACH_CALL=True
    
    # establish connection
    try:
        # resolve symbolic links, if any, in the given device path
        powerStripCanonicalPath = os.path.realpath(devicePath)
        # create an instance of modbus slave instrument called powerStrip
        powerStrip = minimalmodbus.Instrument(powerStripCanonicalPath, 1) # arguments: port name, slave address (in decimal)
        # set baud rate
        powerStrip.serial.baudrate = 9600
        #powerStrip.debug = True  # to see communication with the instrument
    except:
        print 'Connection failed'
        sys.exit(1)

    # set switch address since addressing starts from 0
    switchAddr = switchId - 1

    # execute given operation
    try:
        if operation=='read':
            # check for valid switchId to perform read operation
            if switchId > 0:
                print 'Switch', switchId,
                if powerStrip.read_bit(switchAddr, 1) == 1: # read_bit(coil address, modbus function code)
                    print 'is on'
                elif powerStrip.read_bit(switchAddr, 1) == 0:
                    print 'is off'
            else:
                print 'Read not supported on all switches'
                raise Exception
        else:
            if switchId > 0:
                # to perform turn_on, turn_off operations on given switch
                if operation == 'turn_on':
                    powerStrip.write_bit(switchAddr, 1, 5) # write_bit(coil address, value, modbus function code)
                if operation == 'turn_off':
                    powerStrip.write_bit(switchAddr, 0, 5)
                # to perform operation on all switch
            elif switchId == 0:
                for currSwitchAddr in range(switchNum):
                    powerStrip.write_bit(currSwitchAddr, operation == 'turn_on', 5) # write_bit(coil address, value, modbus function code)
    except:
        print 'Operation failed'
        sys.exit(2)
if __name__ == "__main__":
    main(args.devicePath, args.switchId, args.operation)
