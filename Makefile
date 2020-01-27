# Variables are documented in common/build.sh.
BASE_IMAGE_NAME = scala
VERSIONS = 2.11.8, 2.12.10
OPENSHIFT_NAMESPACES =

# HACK:  Ensure that 'git pull' for old clones doesn't cause confusion.
# New clones should use '--recursive'.
.PHONY: $(shell test -f common/common.mk || echo >&2 'Please do "git submodule update --init" first.')

include common/common.mk

zero-tarballs:
	find ./2.11.8 -name "*.tar.gz" -type f -exec truncate -s 0 {} \;
	find ./2.11.8 -name "*.tgz" -type f -exec truncate -s 0 {} \;
	find ./2.12.10 -name "*.tar.gz" -type f -exec truncate -s 0 {} \;
	find ./2.12.10 -name "*.tgz" -type f -exec truncate -s 0 {} \;
