@echo off
rem NOTE: You needs 64-bit Visual Studio Command Prompt.

if exist smallexe64.obj del smallexe64.obj
if exist smallexe64.exe del smallexe64.exe
ml64 /c /Fosmallexe64.obj smallexe64.asm
link /machine:X64 /SUBSYSTEM:WINDOWS /merge:.rdata=.text /ALIGN:16 /STUB:DOSSTUB2.EXE smallexe64.obj
dumpbin /imports /exports /headers smallexe64.exe > smallexe64.exe.txt

if exist loadtest64.exe del loadtest64.exe
cl /Feloadtest64.exe loadtest.c
dumpbin /imports /exports /headers loadtest64.exe > loadtest64.exe.txt

pause
