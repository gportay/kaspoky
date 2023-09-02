#
# Copyright 2023 Gaël PORTAY
#
# SPDX-License-Identifier: LGPL-2.1-or-later
#

# https://github.com/siemens/kas/blob/4.0/kas-container
KAS ?= kas

# https://kas.readthedocs.io/en/4.0/command-line.html#environment-variables
DL_DIR ?= $(HOME)/.cache/yocto/dl
export DL_DIR

SSTATE_DIR ?= $(HOME)/.cache/yocto/sstate
export SSTATE_DIR

.PHONY: all
all: build

.PHONY: build shell
build shell:
	$(KAS) $@ kas-project.yml

.PHONY: clean
clean:
	rm -Rf build
