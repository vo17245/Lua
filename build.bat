@echo off
cmake  -B ./build -S . 
cmake  --build ./build  --config Release
cmake  --build ./build  --config Debug
pause
