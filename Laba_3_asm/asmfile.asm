.386

PUBLIC _ProcessArray1@8

.model flat
.data
.code

_ProcessArray1@8 proc
push ebp
mov ebp, esp
push esi

mov esi, [ebp + 8]
mov ebx, [ebp + 12]

mov edx, 0


loop1:
cmp ebx, 0
je endloop

mov eax, [esi]
add esi, 4
dec ebx

mov ecx, ebx
mov edi, esi


in_loop:
cmp ecx, 0
je loop1

cmp [edi], eax
je unique
add edi, 4
dec ecx
jmp in_loop




unique:
inc edx
add edi, 4
dec ecx
jmp in_loop



endloop:
inc edx
mov eax, edx

pop esi
mov esp, ebp
pop ebp

ret 8
_ProcessArray1@8 endp

end