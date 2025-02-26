.global _start
/*
-------------------------
ECE3221 Lab #3
-------------------------
*/
.org 0x100

_start:
	movia r20,0x000088B0	# address of the HEX Control Register

init:
	ori r11,r0,65295	# r11 = 65295
	stwio r11,(r20)		# initialize HEX Displays
	ori  r1,r0,1		# r1 = 1
	ori  r2,r0,2		# r2 = 2
	ori  r3,r0,3		# r3 = 3
	ori  r4,r0,4		# r4 = 4

delay:
	subi sp,sp,16		# Allocate space
	stw r1,(sp)		# save r1
	stw r2,4(sp)		# save r2
	stw r3,8(sp)		# save r3
	stw r4,12(sp)		# save r4
	

	movia r21,0x00008870	# address of the decade timer
	ldw r5,0(r21)		# read current timer
	add r5,r5,r3		# calculate time

	
	