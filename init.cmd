@echo off

prompt $G 

pushd %CD%

cd /d %~dp0

REM ***************************************************************************
REM Below alias command.
REM ***************************************************************************
doskey ls=ls --color=auto --show-control-chars -N $*
doskey grep=grep -E -n --color=auto $*
REM doskey rm=rm -i $*
REM doskey cp=cp -i $*
REM doskey mv=mv -i $*
doskey vi=vim $*
REM REM doskey find=c:/msys64/usr/bin/find.exe $*
REM doskey ag=ag --nocolor $*

if "%CMD_INIT_SCRIPT_LOADED%" neq "" goto :eof
set CMD_INIT_SCRIPT_LOADED=1

REM ***************************************************************************
REM Below enviroiment variable.
REM ***************************************************************************

set GIT_EDITOR=vim
REM set SBCL_HOME=C:\Program Files\Steel Bank Common Lisp\1.3.3
REM set PATH=%SBCL_HOME%;%PATH%;c:/msys64/usr/local/bin;c:\dev\instantclient_12_1

REM *** Vim
SET VIM_PATH=C:\tools\Vim
SET PATH=%VIM_PATH%;%PATH%

REM *** Perl
SET PERL_HOME=C:\StrawberryPerl
SET PERL_BIN=%PERL_HOME%\perl\bin
SET PERL_C_BIN=%PERL_HOME%\c\bin
SET PATH=%PERL_BIN%;%PERL_C_BIN%;%PATH%

REM *** Go
SET GOROOT=C:\go
SET GOPATH=%USERPROFILE%\go
SET GOBIN=%GOPATH%\bin
SET PATH=%GOROOT%\bin;%GOBIN%;%PATH%

REM *** VC
SET VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio 14.0
SET VCINSTALLDIR=%VSINSTALLDIR%\VC
SET CL_BIN=%VSINSTALLDIR%\VC\bin
SET INCLUDE=
SET INCLUDE=%INCLUDE%;C:\Program Files (x86)\Windows Kits\10\Include\10.0.10240.0\ucrt
SET INCLUDE=%INCLUDE%;%VCINSTALLDIR%\include
SET LIB=
SET LIB=%LIB%;%VCINSTALLDIR%\lib
SET LIB=%LIB%;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Lib
SET LIB=%LIB%;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.10240.0\ucrt\x86
SET PATH=%PATH%;C:\Windows\Microsoft.NET\Framework\v4.0.30319;%CL_BIN%

REM *** VC - Visual Studio Community 2017
REM    SET VSINSTALLDIR=C:\Program Files (x86)\Microsoft Visual Studio\2017\Community
REM    SET INCLUDE=
REM    REM stdio.h
REM    REM SET INCLUDE=%INCLUDE%;C:\Program Files (x86)\Windows Kits\10\Include\10.0.17134.0\ucrt
REM    SET INCLUDE=%INCLUDE%;%VSINSTALLDIR%\SDK\ScopeCppSDK\SDK\include\ucrt
REM    REM vcruntime.h
REM    SET INCLUDE=%INCLUDE%;%VSINSTALLDIR%\VC\Tools\MSVC\14.14.26428\include
REM    SET LIB=
REM    REM LIBCMT.lib
REM    SET LIB=%LIB%;%VSINSTALLDIR%\SDK\ScopeCppSDK\VC\lib
REM    REM kernel32.lib
REM    REM SET LIB=%LIB%;C:\Program Files (x86)\Microsoft SDKs\Windows\v7.1A\Lib
REM    SET LIB=%LIB%;%VSINSTALLDIR%\SDK\ScopeCppSDK\SDK\lib
REM    REM libucrt.lib
REM    REM SET LIB=%LIB%;C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\SDK\ScopeCppSDK\SDK\lib
REM    REM SET LIB=%LIB%;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17134.0\ucrt\x86
REM    REM SET LIB=%LIB%;C:\Program Files (x86)\Windows Kits\10\Lib\10.0.17134.0\ucrt\x64
REM    REM csc.exe (for csharp)
REM    PATH=%PATH%;C:\Windows\Microsoft.NET\Framework\v4.0.30319
REM    REM cl.exe (for c)
REM    SET PATH=%PATH%;%VSINSTALLDIR%\SDK\ScopeCppSDK\VC\bin


REM *** node.js
SET NODEJS_PATH=C:/tools/node
SET NODE_PATH=%NODEJS_PATH%/node_modules
SET PATH=%PATH%;%NODEJS_PATH%

REM *** sbt
SET SBT_HOME=C:\dev\sbt
SET PATH=%PATH%;%SBT_HOME%\bin

REM *** Git
SET GIT_PATH=C:\Program Files\Git\
SET GIT_BIN=%GIT_PATH%\mingw64\bin
SET GIT_USER_PATH=%GIT_PATH%\usr\bin
SET PATH=%GIT_USER_PATH%;%GIT_PATH%;%GIT_BIN%;%PATH%

REM *** Python
SET PYTHON3PATH=C:\Python\python312\
REM SET PYTHONHOME=%PYTHONHOME%;%PYTHON3PATH%
SET PYTHONPATH=%PYTHONPATH%;%PYTHON3PATH%;%PYTHON3PATH%lib;%PYTHON3PATH%lib\site-packages
REM         REM SET PYTHONPATH=%PYTHONPATH%;%PYTHON3PATH%
SET PATH=%PYTHON3PATH%;%PYTHON3PATH%Scripts;%PATH%
REM         REM SET PATH=%PATH%;%PYTHONPATH%;%PYTHONPATH%\Scripts

REM For "OmniSharp" and "Python2"
REM    SET PYTHON27PATH=C:\Python\python27\
REM    REM SET PYTHONHOME=%PYTHONHOME%;%PYTHON27PATH%
REM    REM ***** For OmniSharp
REM    REM SET PYTHONPATH=%PYTHONPATH%;%PYTHON27PATH%lib;%PYTHON27PATH%lib\site_packages;%PYTHON27PATH%lib\plat-win;%PYTHON27PATH%DLLs;%PYTHON27PATH%lib\lib-tk
REM    REM ***** For Python jedi
REM    SET PYTHONPATH=%PYTHONPATH%;%PYTHON27PATH%lib;%PYTHON27PATH%lib\site_packages
REM    REM REM     REM     REM SET PATH=%PATH%;%PYTHON27PATH%
REM    SET PATH=%PATH%;%PYTHON27PATH%;%PYTHON27PATH%Scripts

REM     SET PYTHONHOME=C:\Users\a5111176\AppData\Local\Programs\Python\Python35
REM     SET PYTHONHOME=C:\Python35\
REM SET PYTHONHOME=C:/Python/python36/
REM SET PYTHONPATH=C:/Python/python36/Lib;C:/Python/python36/Lib/site-packages
REM SET PATH=%PATH%;C:/Python/python36/Lib;C:/Python/python36/Lib/site-packages

REM *** Tesseract
SET TESSERACT_PATH=C:\tools\tesseract\tesseract-4.0.0-alpha
REM SET TESSDATA_PREFIX=%TESSERACT_PATH%\tessdata
SET PATH=%PATH%;%TESSERACT_PATH%

REM *** Oracle
REM SET ORACLE_HOME=c:\dev\oracle\instantclient_10_2_x86
SET ORACLE_HOME=C:\dev\oracle\OracleInstantClient\x64\instantclient_19_3
SET TNS_ADMIN=c:\dev\oracle\instantclient_10_2_x86
SET NLS_LANG=American_america.AL32UTF8
SET PATH=%ORACLE_HOME%;%ORACLE_HOME%\bin;%PATH%

REM *** cURL CA_BUNDLE
REM  https://curl.haxx.se/ca/cacert.pem
REM SET CURL_CA_BUNDLE=cacert.pem

REM *** Java
SET JAVA_HOME=C:\Program Files\Java\jdk1.8.0_171
SET PATH=%PATH%;%JAVA_HOME%\bin

REM *** PostgreSQL
SET POSTGRESQL_BIN=C:\PostgreSQL\postgresql-9.1.24-1x64\pgsql\bin
SET PATH=%PATH%;%POSTGRESQL_BIN%

REM *** SQLite
SET SQLITE3_BIN=C:\dev\SQLite
SET PATH=%PATH%;%SQLITE3_BIN%

REM *** PHP
SET PHP_BIN=C:\dev\PHP\bin
SET PATH=%PATH%;%PHP_BIN%

REM *** CMake
SET CMAKE_PATH=C:\dev\CMake
SET CMAKE_BIN=%CMAKE_PATH%\bin
SET PATH=%PATH%;%CMAKE_BIN%

REM *** deno
SET DENO_BIN=%userprofile%\.deno\bin\
SET PATH=%PATH%;%DENO_BIN%

SET LANG=ja_JP.UTF-8

REM Load init_local.cmd
if exist init_local.cmd (
  call init_local.cmd
)

popd

cls

REM 
REM Auto load this bat file.
REM 
REM 1. "regedit" move registory key "HKCU\SOFTWARE\Microsoft\Command Processor"
REM 2. Create entry key "AutoRun" String.
REM 3. Set string value is "%USERPROFILE%\init.cmd".
