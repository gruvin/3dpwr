# R'Pi GPIO on/off for 3D Printer Power Supply

## What

This simple C++ program makes use of the `GPIOClass` provided by Hussam Al-Hertani at [www.hertaville.com](http://www.hertaville.com/introduction-to-accessing-the-raspberry-pis-gpio-in-c.html) to control an external relay board, via GPIO port 22.

## Why

I wanted to be able to turn my 3D printer's power on and off without having to put `sudo` in front of the command.

In Linux (Raspian) an executable file can be made to run as the user who owns it (`chown`) -- no nmatter who runs it. If that user is `root` then the executable run as `root`, just like using `sudo`, only not having to. 

However, this does not work for `#!` scripts -- Python scripts included -- only for proper executables. I think the security ramifications of that are fairly obvious. ;-)

Well, yes; one can set up a user to be allowed to run sudo without a password (the default situation on the R'Pi) and then use a wrapper script to put the `sudo` in front of a call to the actual Python script ... 

```
$ mv 3dpwr 3dpwr.real
$ vi 3dpwr
---
#!/bin/bash
sudo 3dpwr.real $*
---
:wq
```

... ugh. Call me an old school purist if you must, but yuck.

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

## Using a Differnet GPIO Pin

Simply edit `3dpwr.cpp` -- following your hacker nose -- and run `make ; sudo make install` again.

## Oops!

Did I mention I was a little, "old school"? I forgot to Google to see if this had been done before, only better. LOL I have just discovered [wiringPi](http://wiringpi.com/).
