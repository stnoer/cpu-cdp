MAIN:
    lui  s1, 0xFFFFF
	addi s5,x0,0	# NONE
    addi s6,x0,1	# ADD
    addi t2,x0,2	# SUB
    addi t3,x0,3	# MUL
    addi t4,x0,4	# DIV
    addi t5,x0,5	# RANDOM
	li   sp, 0x10000            
    csrrwi zero, 0x300, 0x8  
    ecall                       

PREPARE:
    lw   s0, 0x70(s1)   # ��ȡ���뿪�� 
    jal  ra, FUN  		# ��תָ���
    
	sw   a0, 0x60(s1)	# LEDs
	sw   a0, 0x00(s1)   # 7-seg LEDs
	jal  PREPARE
    
FUN:
	srli s2, s0, 21
	andi s2, s2, 0x7     # ������
	
	srli s3, s0, 8       #
	andi s3, s3, 0xFF
	andi a3, s3, 0xF     # a3: AС������
	srli a4, s3, 4       # a4:A����������
	
	andi s4, s0, 0xFF    #
	andi a5, s4, 0xF     # a5:B��С������
	srli a6, s4, 4       # a6:B����������
	
	
	beq  s2, s5, NONE           
	beq  s2, s6, ADD            
	beq  s2, t2, SUB            
	beq  s2, t3, MUL            
	beq  s2, t4, DIV            
	beq  s2, t5, RAN           
	
NONE:
	addi a0, x0, 0
	jalr x0, 0(ra)
	
ADD:
	add  t0, a3, a5       # t0:С���������
	add  t1, a4, a6       # t1:�����������
	
	addi a2, x0, 10
	blt  t0, a2, RESLUT
	addi t0, t0, -10
	addi t1, t1, 1
	
	jal  x0, RESLUT

SUB:
	blt s3, s4, SWAP      # ��֤A>B

	sub  t0, a3, a5       # t0:С���������
	sub  t1, a4, a6       # t1:�����������
	
	bge  t0, x0, RESLUT
	addi t0, t0, 10       # С����λ+10Ϊ����
	addi t1, t1, -1       # ����-1
	jal  x0, RESLUT

SWAP:
	add s11, a4, x0       # ����AB��������
	add a4, a6, x0
	add a6, s11, x0
	
	add s11, a5, x0       # ����ABС������
	add a5, a3, x0
	add a3, s11, x0
	jal x0,SUB

MUL:
	sll  t0, s3, s4
	srli t1, t0, 4         # t0:��������
	andi t0, t0, 0xf       # t1:С������
	jal  x0, RESLUT
	
DIV:
	srl  t0, s3, s4
	srli t1, t0, 4         # t0:��������
	andi t0, t0, 0xf       # t1:С������
	jal  x0, RESLUT
	
RAN:
	addi a2, x0, 15        
	addi a3, x0, 0         
	slli t0, s3, 8
	add  t0, t0, s4             
	slli t1, t0, 16
	add  t0, t1, t0         
		
	RANMAKE:
		add  a5, a5, x0
		
		andi t1, t0, 0x1        # ȡ��0λ
		xor  a5, a5, t1
		
		srli t1, t0, 1          # ȡ��1λ
		andi t1, t0, 0x1     
		xor  a5, a5, t1
		
		srli t1, t0, 21         # ȡ��21λ
		andi t1, t1, 0x1  
		xor  a5, a5, t1
		
		srli t1, t0, 31         # ȡ��31λ
		andi t1, t1, 0x1 
		xor  a5, a5, t1
		
		slli t0, t0, 1
		or   t0, t0, a5
	COUNT:
		addi a3, a3, 1         
		bge  a2, a3, COUNT
		
	addi a3, x0, 0          
	add  a0, t0, x0
	sw   a0, 0x60(s1)           # LEDs
	sw   a0, 0x00(s1)           # 7-seg LEDs
	lw   a7, 0x70(s1)           # ��ȡ���뿪�� 
	bne  a7, s0, PREPARE
	jal  x0, RANMAKE

RESLUT:
	add  a0, t0, x0            # ����С��
	addi a2, x0, 10
	slli t1, t1, 16
	add  a0, a0, t1            # ��������
	jalr x0, 0(ra)
