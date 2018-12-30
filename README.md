# led_devicce_driver_2
Device driver for separately shining two LEDs.

## Demonstration
- https://youtu.be/MVUase_HDJ0

## Requirements
- Raspberry Pi 3 Model B
  - Raspbian
- Linux Kernel Source
  - download kernel source into /user/src/linux
  - kernel build scripts : https://github.com/ryuichiueda/raspberry_pi_kernel_build_scripts.git
- 2 LEDs
  - Left LED :GPIO25
  - Right LED :GPIO24
  
## Usage
```
cd led_device_driver_2
make
sudo insmod myled.ko
sudo chmod 666 /dev/myled0
echo 1 > /dev/myled0 //2LEDs flash
echo 0 > /dev/myled0 //2LEDs solid
echo 3 > /dev/myled0 //Left LED flash
echo 2 > /dev/myled0 //Left LED solid
echo 5 > /dev/myled0 //Right LED flash
echo 4 > /dev/myled0 //Right LED solid
```

## Licence
This repository is licensed under the GPLv3 license
