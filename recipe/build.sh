export MKLROOT=${PREFIX}

# TODO: fix in the dpcpp_* compiler packages.
export _CONDA_PYTHON_SYSCONFIGDATA_NAME=_sysconfigdata_x86_64_conda_linux_gnu

# these break gcc
export CFLAGS="`echo $CFLAGS | sed \"s/--target=${HOST}//\"`"
export CXXFLAGS="`echo $CXXFLAGS | sed \"s/--target=${HOST}//\"`"
export LDFLAGS="`echo $LDFLAGS | sed \"s/--target=${HOST}//\"`"

${PYTHON} -m pip install . --no-deps -vv
