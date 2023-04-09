section .text
    global add:

add:    push rbp
        ;above is same as sub rsp, 8; mov [rsp], rbp
        mov rbp, rsp
        sub rsp, 16
        mov [rsp], rdi
        mov [rsp + 8], rsi
        mov rax, [rsp]
        mov rbx, [rsp + 8]
        add rax, rbx
        mov rsp, rbp
        pop rbp
        ;above is same as mov rbp, [rsp]; add rsp, 8
        ret