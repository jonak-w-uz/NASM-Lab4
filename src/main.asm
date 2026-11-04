global _start

section .data
    a dd 4.5
    b dd 3.5
    c dd -2.0
    d dd 2.0

section .bss
    wynik resd 1

; ((a+b) * c) / d

section .text
_start:
    finit

    fld dword [a]
    fld dword [b]
    faddp

    fld dword [c]
    fmul

    fld dword [d]
    fdiv

    fstp dword [wynik]

koniec:
    mov rax, 60
    mov rdi, 0
    syscall
