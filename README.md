# ArmAssemblyCourse

This course is on GNU Arm Assembly Language using 

# Install the cross compilers

```
    sudo apt-get install libc6-armel-cross libc6-dev-armel-cross binutils-arm-linux-gnueabi libncurses5-dev build-essential bison flex libssl-dev bc
```

If you are using an Acqua or RoadRunner board:

```
    sudo apt-get install gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf
```

If you are using an Arietta, Aria or FOX G20 board:

```
sudo apt-get install gcc-arm-linux-gnueabi g++-arm-linux-gnueabi
```

For qemu you will need to install:

```
    sudo apt-get install -y qemu-user-static
```

