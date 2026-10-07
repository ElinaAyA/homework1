@echo off
chcp 65001
setlocal enabledelayedexpansion

for /l %%i in (1,1,800000) do (
    set /a sq=%%i*%%i
    set /a posl=!sq!%%1000000
    if !posl! == 269696 (
        echo %%i, !sq!
        goto:exit
    )
)
:exit