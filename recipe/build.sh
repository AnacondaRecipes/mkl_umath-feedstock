export MKLROOT=${PREFIX}
export LDFLAGS="-L${BUILD_PREFIX}/${HOST}/sysroot/usr/lib -L${BUILD_PREFIX}/lib -L${PREFIX}/lib ${LDFLAGS}"
export CFLAGS="-I${BUILD_PREFIX}/${HOST}/sysroot/usr/include -I${BUILD_PREFIX}/include -I${PREFIX}/include ${CFLAGS}"

export CC=icx
export CXX=icpx

${PYTHON} setup.py install --old-and-unmanageable
