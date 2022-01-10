array	DCD		67, 55, 10, 5, 13, 17
		
loop
		MOV		R0, #0x100
		MOV		R1, #0
		
iterate
		LDR		R2, [R0]
		ADD		R0, R0, #4
		LDR		R3, [R0]
		CMP		R2, R3
		BGT		swap
endswap
		
		CMP		R0, #0x114
		BLT		iterate
		CMP		R1, #1
		BEQ		loop
		END
		
swap
		MOV		R1, #1
		STR		R2, [R0]
		SUB		R0, R0, #4
		STR		R3, [R0]
		ADD		R0, R0, #4
		B		endswap
