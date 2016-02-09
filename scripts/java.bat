set path=%path%;%CD%;%CD%\scripts;%CD%\other;
if "%3" == "d" goto :decode
if "%3" == "b" goto :encode
if "%3" == "-w" goto :sign
if "%3" == "if" goto :install

goto :end

:decode
apktool.bat %3 %4 -o %5 %6 %7 %8 %9
goto :end

:encode
apktool.bat %3 %4 %5 -o %6 %7 %8 %9
goto :end

:sign
java.exe -jar %2 %3 %4 %5 %6 %7


:install
apktool.bat %3 %4 %5


:end