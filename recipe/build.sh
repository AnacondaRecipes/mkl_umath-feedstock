export MKLROOT=${PREFIX}
export LDFLAGS="-L${PREFIX}/lib ${LDFLAGS}"
export CFLAGS="-I${PREFIX}/include ${CFLAGS}"

# cp $PREFIX/site.cfg site.cfg

${PYTHON} setup.py install --old-and-unmanageable
# ${PYTHON} setup.py config build --compiler=intelem install --old-and-unmanageable
# ${PYTHON} setup.py build --cpu-baseline SSE42 --cpu-dispatch AVX512_ICL --force --compiler=intelem install --old-and-unmanageable
# ${PYTHON} setup.py config_cc --compiler=intelem build_ext --inplace
# ${PYTHON} -m pip install . --no-deps -vv
