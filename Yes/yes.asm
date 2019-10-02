# By: its-kos - https://github.com/its-kos

section .text

main:	li $v0, 4
   		while:
			syscall
			j while

section .data
yes: .asciiz "yes\n", $a0