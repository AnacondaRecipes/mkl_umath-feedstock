
set MKLROOT=%PREFIX%
set CFLAGS=-I%PREFIX%\Library\include %CFLAGS%
set LDFLAGS=/LIBPATH:%PREFIX%\Library\lib %LDFLAGS%

%PYTHON% -m pip install . --no-deps -vv

if errorlevel 1 exit 1
