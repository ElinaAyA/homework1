@echo off
chcp 65001 
setlocal enabledelayedexpansion

set /p "st=Введите строку: "
set "st1=%st: =%"


set "rev="
set "st2=!st1!"

:krug
if defined st2 (
    set "perv=!st2:~0,1!"
    set "rev=!perv!!rev!"
    set "st2=!st2:~1!"
    goto krug
)
if "!st1!" == "!rev!" (
    echo палиндром
) else (
    echo не палиндром
)
echo Исходная строка: !st1!
echo Перевернутая: !rev!