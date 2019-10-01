#By: its-kos - https://github.com/its-kos

        .data

yes: .asciiz "yes\n"

        .text

        .globl my_main

my_main:

    while: 
        li $v0, 4
        la $a0, yes
        syscall
        j while