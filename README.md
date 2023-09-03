# kaspoky

kaspoky is an experiment repository to build a [poky] firmware using [kas].

It primarily intends to build a firmware to run on an [Raspberry Pi 4]
hardware and/or the [QEMU x86_64] system emulator.

## CONFIGURE

Configure a custom firmware if needed:

	kas menu

This saves the choices to `.config.yaml`.

## BUILD

Build the custom firmware:

	kas build

Or, build the default firmware:

	kas build kas-project.yml

This takes a while to cook the world!

## BUGS

Report bugs at *https://github.com/gportay/kaspoky/issues*

## AUTHOR

Written by Gaël PORTAY *gael.portay@gmail.com*

## COPYRIGHT

Copyright (c) 2023 Gaël PORTAY

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Lesser General Public License as published by the Free
Software Foundation, either version 2.1 of the License, or (at your option) any
later version.

[QEMU x86_64]: https://www.qemu.org/
[Raspberry Pi 4]: https://www.raspberrypi.com/products/raspberry-pi-4-model-b/
[kas]: https://github.com/siemens/kas
[poky]: https://www.yoctoproject.org/software-item/poky/
