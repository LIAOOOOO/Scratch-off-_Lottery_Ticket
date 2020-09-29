.option nopic
	.text
	.align	3
.LC0:
	.string "%llu\n"
	.text
	.align 1
	.globl	main
	.type	main, @function
.LC1:
	.string "%llu"
	.align 3
.LC2:
	.string "%llu "
	.align 3
.LC3:
	.string "\n"
	.align 3
main:
	addi x2,x2,-32
	sd	x1,24(x2)
	sd	x8,16(x2)
	addi x8,x2,32

	#begin
	addi x2,x2,-128
	sd x18,88(x2)
	sd x19,96(x2)
	sd x20,104(x2)
	sd x21,112(x2)
	sd x22,120(x2)
    addi x18,x2,0
    addi x19,x2,88 
#input   
LOOP1:
    add x11, x8, zero
    lui x15,%hi(.LC1)
    addi x10,x15,%lo(.LC1)
    call scanf
    ld x29, 0(x8)
    sd x29,0(x18)
    addi x18,x18,8
    blt x18,x19,LOOP1
##################################################################################
    addi x18,x2,8           #x18(i) stored the 1st number address
    addi x19,x2,88          #x19 stored the last number address
    addi x5,x2,8
for1tst:
    bge x5,x19,exit1       #if x5(i) > 88(the last number address),exit 
    addi x20,x5,-8         #x20(j) = point to the next 8byte address
for2tst:
    blt x20,x18,exit2       #if j < the first number address,exit2
    ld x21,0(x20)           #x21 = point to the number in j
    ld x22,8(x20)           #x22 = point to the number next to j
    bge x22,x21,exit2
#CALL SWAP
    add x10,x21,x0
    add x11,x22,x0
    jal x1,swap
    addi x20,x20,-8          #j+=1
    jal x0,for2tst
swap:
    add x6,x10,x0           #x6 stored the number in x10
    add x10,x11,x0          #x10 stored the number in x11
    add x11,x6,x0           #x11 stored the number in x6
    sd x10,0(x20)
    sd x11,8(x20)
    jalr x0,0(x1)  
exit2:
    addi x5,x5,8            #i+=1
    jal x0,for1tst
exit1:
###################################################################################
#output
    addi x18,x2,8
    addi x19,x2,88
LOOP2:
    ld x29,0(x18)
    addi x11, x29, 0
    lui x15,%hi(.LC2)    
    addi x10,x15,%lo(.LC2)
    call printf
    addi x18,x18,8
    bge x18,x19,exit
    jal x0,LOOP2
exit:
    lui x15,%hi(.LC3)     #endl    
    addi x10,x15,%lo(.LC3)
    call printf
#compare   
    addi x18,x2,8
    addi x19,x2,88
    addi x20,x0,0
    ld x31,0(x2)          #x30 = win number
LOOP3:
    ld x29,0(x18)         #compared number
    addi x20,x20,1
    bge x18,x19,exit4
    beq x31,x29,exit3
    addi x18,x18,8
    jal x0,LOOP3
exit3:
    addi x11, x20, 0
    lui x15,%hi(.LC2)    
    addi x10,x15,%lo(.LC2)
    call printf
    jal x0,END
exit4:
    addi x11, x0, 0
    lui x15,%hi(.LC2)    
    addi x10,x15,%lo(.LC2)
    call printf     
    jal x0,END

END:
    ld x18,88(x2)
    ld x19,96(x2)
    ld x20,104(x2)
    ld x21,112(x2)
    ld x22,120(x2)
    addi x2,x2,128  # add



	#end
	li	x15,0
	mv	x10,x15
	ld	x1,24(x2)
	ld	x8,16(x2)
	addi x2,x2,32
	jr	x1
	.size	main, .-main
	.ident	"GCC: (GNU) 7.2.0"



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>

</title></head>
<body>
    <form method="post" action="./File_DownLoad_Wk_zip.aspx?File_name=PA1_1063513.S&amp;type=3&amp;id=2652323" id="form1">
<div class="aspNetHidden">
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTEzNDM3NzkxOWRkwneTr34MFXJYUKyKKda+DU4gQVM=" />
</div>

<div class="aspNetHidden">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="629601C3" />
</div>
    <div>
    
    </div>
    </form>
</body>
</html>
