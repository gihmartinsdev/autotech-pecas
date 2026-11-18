@echo off
chcp 65001 > nul
cls
where javac >nul 2>nul
if %errorlevel% neq 0 (
    echo [ERRO] O compilador javac nao foi encontrado no PATH do Windows!
    pause
    exit /b 1
)
if not exist "bin" mkdir bin
javac -encoding UTF-8 -cp "lib/*" -d bin src/br/com/autotech/model/*.java src/br/com/autotech/factory/*.java src/br/com/autotech/dao/*.java src/br/com/autotech/main/*.java
if %errorlevel% neq 0 (
    echo [ERRO] Falha durante a compilacao.
    pause
    exit /b 1
)
java -cp "bin;lib/*" br.com.autotech.main.MainApp
pause
