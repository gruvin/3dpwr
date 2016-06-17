# R'Pi GPIO on/off for 3D Printer Power Supply

## Why

I wanted to be able to turn my 3D printer's power on and off without having to put `sudo` in front of the command.

In Linux (Raspian) an executable file can be made to run as the user it is owned by (`chown`) no nmatter who runs it. But this does not work for `#!` scripts -- only proper executables. This is why it won't work with Python.

Well, yes; one can set up a user to be allowed to run sudo without a password and then use a wrapper script to put the `sudo` in front of a call to the actual Python script ... but ugh. Call me an old school purist if you must, but yuck.

## What

This simple C++ program makes use of the `GPIOClass` provided by Hussam Al-Hertani at [www.hertaville.com](http://www.hertaville.com/introduction-to-accessing-the-raspberry-pis-gpio-in-c.html) to control an external relay board, via GPIO port 22.

## Installation

```
$ make
$ sudo make install
```

This works as-is in Raspian, on an R'Pi Model B+. I have not tested it on anything else. But I'm sure it would work on the model A, B, the R'Pi 2 and 3.

## Usage

To turn the supply relay on ...

```
$ 3dpwr on
```

To turn the supply relay off ...

```
$ 3dpwr off
```

Pretty simple stuff.



