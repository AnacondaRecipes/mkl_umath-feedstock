
set MKLROOT=%PREFIX%
set CFLAGS=-I%PREFIX%\Library\include %CFLAGS%
set LDFLAGS=/LIBPATH:%PREFIX%\Library\lib %LDFLAGS%

%PYTHON% setup.py config build --compiler=intelem install --old-and-unmanageable
@REM %PYTHON% setup.py build --cpu-baseline SSE42 --cpu-dispatch AVX512_ICL --force --compiler=intelemw install --old-and-unmanageable
@REM %PYTHON% setup.py config_cc --compiler=intelem build_ext --inplace
@REM %PYTHON% -m pip install . --no-deps -vv

if errorlevel 1 exit 1
