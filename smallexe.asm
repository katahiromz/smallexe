; smallexe.asm

.386
.model flat, stdcall

.code
WinMainCRTStartup proc hinst:DWORD, hprev:DWORD, cmdline:DWORD, cmdshow:DWORD
	xor eax, eax
	ret
WinMainCRTStartup endp
end
