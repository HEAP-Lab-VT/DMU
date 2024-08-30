#!/bin/bash

insmod DMU_os_module/DMU.ko
insmod DMU_interrupt/watchpoints_interrupt_module.ko
echo "Module loaded"
