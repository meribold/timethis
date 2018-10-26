# I don't really want or know how to write portable shell scripts.  Just use Bash.
SHELL := /bin/bash

# Disable all built-in rules.  See [1] and [2].
MAKEFLAGS += --no-builtin-rules

# Clear the suffix list; no suffix rules in this makefile.  See section 7.2.1 of the GNU
# Coding Standards [3].  This might be redundant.
.SUFFIXES:

# Set the default goal.
.PHONY: all
all: dist

# See [4].
.PHONY: dist
dist:
	python3 setup.py sdist bdist_wheel

.PHONY: clean
clean:
	rm -rf __pycache__/ dist/ timethis.egg-info/ build/

.PHONY: upload
upload:
	twine upload --repository-url https://test.pypi.org/legacy/ dist/*

.PHONY: upload-to-pypi
upload-to-pypi:
	twine upload dist/*

# [1]: https://stackoverflow.com/q/4122831
# [2]: https://gnu.org/software/make/manual/html_node/Catalogue-of-Rules.html
#      "Catalogue of Built-In Rules - section 10.2 of the GNU Make Manual"
# [3]: https://www.gnu.org/prep/standards/standards.html#Makefile-Basics
#      "General Conventions for Makefiles - GNU Coding Standards"
# [4]: https://packaging.python.org/tutorials/packaging-projects/#generating-distribution-archives
