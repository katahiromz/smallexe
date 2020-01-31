; smallexe64.asm
.code

WinMainCRTStartup proc hinst:QWORD, hprev:QWORD, cmdline:QWORD, cmdshow:DWORD
	xor rax, rax
	ret
WinMainCRTStartup endp

end
