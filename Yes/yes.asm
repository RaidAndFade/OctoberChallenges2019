# By: its-kos - https://github.com/its-kos

	.data
yes: .asciiz "yes\n"

	.text
	.globl main
	
main:
   la $a0, yes
   while:
      li $v0, 4
      syscall
      j while