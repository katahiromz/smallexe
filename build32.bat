@echo off
rem NOTE: You needs 32-bit Visual Studio Command Prompt.

if exist smallexe.obj del smallexe.obj
if exist smallexe.exe del smallexe.exe
ml /c /Fosmallexe.obj smallexe.asm
link /machine:X86 /SUBSYSTEM:WINDOWS /merge:.rdata=.text /ALIGN:16 /STUB:DOSSTUB2.EXE smallexe.obj
dumpbin /imports /exports /headers smallexe.exe > smallexe.exe.txt

if exist loadtest.exe del loadtest.exe
cl /Feloadtest.exe loadtest.c
dumpbin /imports /exports /headers loadtest.exe > loadtest.exe.txt

pause
