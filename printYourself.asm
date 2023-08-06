.data
	
.text
start:
	la	$t0, begin
	la	$t1, end
	li	$a1, 16 # $s0 selected
	li 	$a2, 0
next:
	bgt	$t0, $t1, done
	
	lw 	$t2, 0($t0)
	srl 	$t2, $t2, 26
	andi	$t2, $t2, 63
	
	lw 	$a0, 0($t0)
	
	bne	$t2, $zero, else
	jal 	R_Type
	j 	end_if_else
	else:	
	beq 	$t2, 2, end_if_else
	beq	$t2, 3, end_if_else
	jal 	I_Type
	
	end_if_else:
	addi	$t0, $t0, 4
	j	next
done:
	move 	$a0, $a2
	li 	$v0, 1
	syscall 
	
	li	$v0, 10
	syscall
	
begin:
	andi 	$s0, $a0, 1
	andi 	$s0, $a0, 1
	andi 	$s0, $s0, 1
	and 	$s0, $s0, $s0	
	sub	$s0, $s0, $s1
end:
	
R_Type:
	addi	$sp, $sp, -4
	sw 	$s0, 0($sp)
	
	srl	$a0, $a0, 11
	andi 	$s0, $a0, 31
	
	bne 	$s0, $a1, skip1
	addi 	$a2, $a2, 1
	skip1:	
	
	srl	$a0, $a0, 5
	andi 	$s0, $a0, 31
	
	bne	$s0, $a1, skip2
	addi $a2, $a2, 1
	skip2:
	
	srl	$a0, $a0, 5
	andi 	$s0, $a0, 31
	
	bne	$s0, $a1, skip3
	addi 	$a2, $a2, 1
	skip3:
	
	sw 	$s0, 0($sp)
	addi 	$sp, $sp, 4
	jr 	$ra
							
I_Type:
	addi	$sp, $sp, -4
	sw 	$s0, 0($sp)
	
	srl	$a0, $a0, 16
	andi 	$s0, $a0, 31
	
	bne 	$s0, $a1, jump1
	addi 	$a2, $a2, 1
	jump1:	
	
	srl	$a0, $a0, 5
	andi 	$s0, $a0, 31
	
	bne	$s0, $a1, jump2
	addi 	$a2, $a2, 1
	jump2:
	
	sw 	$s0, 0($sp)
	addi 	$sp, $sp, 4
	jr 	$ra


	

