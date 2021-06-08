@echo off

set ROOTDIR=%~dp0
set ROOTDIR=%ROOTDIR:~0,-1%

set PROJECT=Repsi
set PROJECT_DIR=%ROOTDIR%
set UPROJECT_PATH=%PROJECT_DIR%\%PROJECT%.uproject

set UE4_DIR=D:\dev\Epic Games\UE_4.26
set UE4EDITOR_EXE=%UE4_DIR%\Engine\Binaries\Win64\UE4Editor.exe

IF  NOT EXIST %UE4EDITOR_EXE% (
    set UE4_DIR=D:\EpicGames\UE_4.26
    set UE4EDITOR_EXE=%UE4_DIR%\Engine\Binaries\Win64\UE4Editor.exe

    IF  NOT EXIST %UE4EDITOR_EXE% (
        set UE4_DIR=E:\dev\ue4.my.git
        set UE4EDITOR_EXE=%UE4_DIR%\Engine\Binaries\Win64\UE4Editor.exe

        IF  NOT EXIST %UE4EDITOR_EXE% (
            set UE4_DIR=D:\dev\ue4.my.git
            set UE4EDITOR_EXE=%UE4_DIR%\Engine\Binaries\Win64\UE4Editor.exe
        )
    )
)

echo %UE4_DIR%

set UE4EDITOR_CMD_EXE=%UE4_DIR%\Engine\Binaries\Win64\UE4Editor-Cmd.exe
set BUILD_BAT=%UE4_DIR%\Engine\Build\BatchFiles\Build.bat
