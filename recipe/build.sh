export MKLROOT=${PREFIX}
export LDFLAGS="-L${BUILD_PREFIX}/lib ${LDFLAGS}"
export CFLAGS="-I${BUILD_PREFIX}/include ${CFLAGS}"

export CC=icx
export CXX=icpx

${PYTHON} setup.py install --old-and-unmanageable
