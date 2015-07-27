#avrdude  -c usbasp -p atmega328p -P usb -b 115200 -e -u -U lock:w:0x3f:m -U efuse:w:0xFF:m -U hfuse:w:0xD9:m -U lfuse:w:0xE2:m
avrdude  -c usbasp -p atmega328p -P usb -b 38400 -U flash:w:optiboot_atmega328_384_8.hex -U lock:w:0x2f:m
