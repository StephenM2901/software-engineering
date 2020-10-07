# Exercises: register-immediate addi instruction exercise template 
# Created by Fearghal Morgan, National University of Ireland, Galway
# Creation date: Sept 2020

# Modify the file everywhere >> is included 
# Stephen Murphy
# 06/10/2020

# All working correctly


# ============================================
Complete the following register-immediate functions (use only the addi instruction)
Include all instructions in this single program 
#
Use your preference of x* or ABI register names in the assembly program, e.g, x0/zero, x10/a0 etc.
Use only registers x0-x15, since x16-x31 are not currently visible in the processor view
instruction syntax: addi rd, rs1, imm,  e.g, addi x10, x11, 3   

References for links below: 
[1] vicilogic RISC-V course references https://www.vicilogic.com/vicilearn/edit_step/?s_id=707
[1.3-7] RISC-V RV32I 2 Base instruction set table for instruction format

Capture the assembly program and simulate using Venus online tools https://www.kvakil.me/venus/
[1.8.a] Venus tutorial 

[1.8.b] Create vicilogic RISC-V hex program upload format 
[1.8.c] upload to a remote RISC-V processor and test (use reference [0.2] vicilogic RISC-V view).
[1.8.d] use the vicilogic debug controls for PC and register breakpoints

# ============================================
# Use register x10/a0 for P (initially 0)

# assembly program          # Notes  (default imm format is decimal 0d)
#1. P = 5
#>> addi x10, x0, 5

#2. increment P by 1  
#>> addi x10, x10, 1

#3. decrement P by 2
#>> addi x10, x10, -2

#4. decrement P by 6
#>> addi x10, x10, -6

#5. P = 0d30 using decimal imm field format in an addi instruction (0d decimal number format is optional, since it is the default format)
#>> addi x10, x0, 30

#6. P = 0x1e using hex imm field format in an addi instruction
#>> addi x10, x0, 0x1e

#7. P = 0b11110 using binary hex imm field format in an addi instruction
#>> addi x10, x0, 0b11110

#8. P = max positive value using addi instruction (use hex imm format)
#>> addi x10, x0, 0x7ff

#9. P = max positive value using addi instruction (using decimal imm format)
#>> addi x10, x0, 2047

#10. P = max negative value (-2048) using addi instruction (use hex imm)
#>> addi x10, x0, -0x800

#11. P = max negative value (-2048) using addi instruction (using decimal imm format)
#>> addi x10, x0, -2048

#12. P = max negative value - 1 (i.e, -2047) possible using addi instruction (using hex imm format)
#>> addi x10, x0, -0x7ff

#13. P = max negative value - 1 (i.e, -2047) possible using addi instruction (using decimal imm format)
#>> addi x10, x0, -2047

============================
Post-assembly program listing
PC instruction    basic assembly     original assembly             Notes
      (31:0)        code                 code 
#> complete this section
00	0x00500513		addi x10 x0 5		addi x10, x0, 5				#5 is added to x0 (always zero) to assign 5 to x10
04	0x00150513		addi x10 x10 1		addi x10, x10, 1			#1 is added to x10 and written to x10 to increment by 1			
08	0xffe50513		addi x10 x10 -2		addi x10, x10, -2			#-2 is added to x10 and written to x10 to decrement by 2
0c	0xffa50513		addi x10 x10 -6		addi x10, x10, -6			#-6 is added to x10 and written to x10 to decrement by 6
10	0x01e00513		addi x10 x0 30		addi x10, x0, 30			#30 added to x0(zero) and written to x10 in default decimal format
14	0x01e00513		addi x10 x0 30		addi x10, x0, 0x1e			#imm in hex format setting x10 to 0d30
18	0x01e00513		addi x10 x0 30		addi x10, x0, 0b11110		#imm in binary format setting x10 to 0d30
1c	0x7ff00513		addi x10 x0 2047	addi x10, x0, 0x7ff			#setting x10 to max value (0d2047) in imm hex format
20	0x7ff00513		addi x10 x0 2047	addi x10, x0, 2047			#setting x10 to max value (0d2047) in imm decimal format
24	0x80000513		addi x10 x0 -2048	addi x10, x0, -0x800		#setting x10 to max negative value (-0d2048) in hex format
28	0x80000513		addi x10 x0 -2048	addi x10, x0, -2048			#setting x10 to max negative value (-0d2048) in decimal format
2c	0x80100513		addi x10 x0 -2047	addi x10, x0, -0x7ff		#setting x10 to max negative value + 1 (-0d2047) in hex format
30	0x80100513		addi x10 x0 -2047	addi x10, x0, -2047			#setting x10 to max negative value + 1 (-0d2047) in decimal format

============================
Venus 'dump' program binary
#> complete this section
00500193
00118193
ffe18193
ffa18193
01e00193
01e00193
01e00193
7ff00193
7ff00193
80000193
80000193
80100193
80100193
============================
Program binary formatted, for use in vicilogic online RISC-V processor
i.e, 8x32-bit instructions, 
format: m = mod(n/8)+1 
    instr(0) instr(1) instr(2)  instr(3)  instr(4) instr(5) instr(6) instr(7)
    instr(8) instr(9) instr(10) instr(11) ... (pad last line with 0s)
#> complete this section
0050019300118193ffe18193ffa1819301e0019301e0019301e001937ff00193
7ff0019380000193800001938010019380100193000000000000000000000000