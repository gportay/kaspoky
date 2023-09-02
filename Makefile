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

.PHONY: build menu shell
build menu shell:
	$(KAS) $@

build shell: .config.yaml
.config.yaml:
	$(KAS) menu

.PHONY: mrproper
mrproper: clean
	rm -f .config.yaml

.PHONY: clean
clean:
	rm -Rf build
