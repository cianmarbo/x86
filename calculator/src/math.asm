global add

section .text

add:    push rbp
        mov  rbp, rsp
        sub  rsp, 16
        mov [rsp], rdi
        mov [rsp + 8], rsi
        mov  rax, [rsp]
        mov  rbx, [rsp + 8]
        add  rax, rbx
        mov  rsp, rbp
        pop  rbp
        ret

global sub

section .text

sub:    push rbp
        mov  rbp, rsp
        sub  rsp, 16
        mov [rsp], rdi
        mov [rsp + 8], rsi
        mov  rax, [rsp]
        mov  rbx, [rsp + 8]
        sub  rax, rbx
        mov  rsp, rbp
        pop  rbp
        ret

global mul

section .text

mul:    push rbp
        mov  rbp, rsp
        sub  rsp, 16
        mov [rsp], rdi
        mov [rsp + 8], rsi
        mov  rax, [rsp]
        mov  rbx, [rsp + 8]
        imul rbx
        mov  rsp, rbp
        pop  rbp
        ret

global divi

section .text

divi:   push rbp
        mov  rbp, rsp
        sub  rsp, 16
        mov [rsp], rdi
        mov [rsp + 8], rsi
        mov  rax, [rsp]
        mov  rbx, [rsp + 8]
        idiv rbx
        mov  rsp, rbp
        pop  rbp
        ret
