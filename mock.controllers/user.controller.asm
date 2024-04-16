section .data
    user1:
        dd 1
        db "Alice",0
        db "alice@example.com",0
        db 0

    num_users equ 1

section .text
    global _start

_start:
    mov eax, 1
    call fetch_user_data
    test eax, eax
    jz not_found

    mov edi, eax
    call print_user_data
    jmp exit_program

not_found:
    mov edi, error_not_found
    call print_string
    jmp exit_program

fetch_user_data:
    xor edi, edi
    mov ecx, num_users
    mov ebx, user1

search_loop:
    cmp eax, [ebx]
    je found_user
    add ebx, user_size
    loop search_loop
    ret

found_user:
    mov edi, ebx
    ret

print_user_data:
    ret

print_string:
    ret

exit_program:
    mov eax, 1
    xor ebx, ebx
    int 0x80
