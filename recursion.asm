.data
newLine: .asciiz "\n"
dividend: .asciiz "Enter dividend: "
divisor: .asciiz "Enter divisor: "
result: .asciiz "Results \n"
quotient: .asciiz "Quotient: "
remainder: .asciiz "Remainder: "	
	
.text
main:
# $a0 quotient
# $a1 remainder
# $a2 dividend
# $a3 divisor

la $a0, dividend
li $v0, 4
syscall

li $v0, 5
syscall
move $t0, $v0

la $a0, divisor
li $v0, 4
syscall

li $v0, 5
syscall
move $t1, $v0

li $a0, 0
li $a1, 0
move $a2, $t0
move $a3, $t1

jal recursiveDivision
move $t2, $a0

la	$a0, result
li	$v0, 4
syscall

la	$a0, quotient
li	$v0, 4
syscall

move $a0, $t2
li $v0, 1
syscall

la	$a0, newLine
li	$v0, 4
syscall

la	$a0, remainder
li	$v0, 4
syscall

move $a0, $a1
li $v0, 1
syscall


li $v0, 10
syscall

recursiveDivision:
	bgt $a2, $a3, recursion
	move $a1, $a2
	jr $ra
	
	recursion:
		addi $sp, $sp, -4
		sw $ra, 0($sp)
		sub $a2, $a2, $a3
		addi $a0, $a0, 1
		jal recursiveDivision
		lw $ra, 0($sp)
		addi $sp, $sp, 4
		jr $ra
		
		
