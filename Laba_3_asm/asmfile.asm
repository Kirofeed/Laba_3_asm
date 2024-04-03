.386

PUBLIC _ProcessArray1@8
PUBLIC _ProcessArray2
PUBLIC ProcessArray3 
PUBLIC ProcessArray4
PUBLIC @ProcessArray5@8

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


;**************************************************



_ProcessArray2 proc

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
ret
_ProcessArray2 endp





;**************************************************




ProcessArray3 proc stdcall, arr: dword, sz: dword


push esi
mov esi, arr
mov ebx, sz

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

ret 8
ProcessArray3 endp

;**************************************************

ProcessArray4 proc C, arr: dword, sz: dword
push esi
mov esi, arr
mov ebx, sz

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

ret 

ProcessArray4 endp

;**************************************************


@ProcessArray5@8 proc

push esi

mov esi, ecx
mov ebx, edx

mov ecx, 0

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

ret

@ProcessArray5@8 endp
end