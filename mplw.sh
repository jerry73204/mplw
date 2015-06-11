#!/bin/sh

MY_VIRTUAL_ENV=${MY_VIRTUAL_ENV:-editing}

# Wrapper script to avoid asciidoc magic
# to ruby and python filter commands (ending in .rb and .py),
# which would not allow sourcing the correct virtualenv Python environment
source ~/virtualenvs/${MY_VIRTUAL_ENV}/bin/activate
CWD=$(dirname $0)
python ${CWD}/mplw.py $@
