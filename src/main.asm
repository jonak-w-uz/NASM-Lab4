global _start

section .data
    tablica dd 1.5, 2.5, 3.0, 4.0, 6.5
    zero dd 0.0

section .bss
    suma resd 1

section .text
_start:
    finit

    mov rsi, tablica
    mov rcx, 5

    fld dword [zero]

sum:
    fld dword [rsi]
    faddp

    add rsi, 4
    loop sum

    jmp koniec

koniec:
    fstp dword [suma]

    mov rax, 60
    mov rdi, 0
    syscall
