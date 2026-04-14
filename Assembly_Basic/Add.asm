section .data
    num1 db 5
    num2 db 3
    result db 0
    msg db 'Result: ', 0
    newline db 10

section .bss
    digit resb 1

section .text
    global _start

_start:

    mov al, [num1]
    add al, [num2]
    mov [result], al


    add al, '0'
    mov [digit], al

    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, 8
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, digit
    mov edx, 1
    int 0x80

    mov eax, 4
    mov ebx, 1
    mov ecx, newline
    mov edx, 1
    int 0x80

    mov eax, 1
    mov ebx, 0
    int 0x80
