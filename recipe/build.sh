export MKLROOT=${PREFIX}
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS}"
export CFLAGS="-I${PREFIX}/include -I${BUILD_PREFIX}/include --sysroot ${CONDA_BUILD_SYSROOT} ${CFLAGS}"

export CC=icx
export CXX=icpx

${PYTHON} -m pip install . --no-deps -vv
