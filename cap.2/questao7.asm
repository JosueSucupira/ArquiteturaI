	    .686
        .model flat, c
        .stack 100h
printf  PROTO arg1:Ptr byte, printlist:VARARG
scanf   PROTO agr2:Ptr byte, inputlist:VARARG
	    .data
msg1fmt byte 0Ah, "%s", 0
msg2fmt byte "%s", 0Ah, 0
msg3fmt byte "%s", 0
msg4fmt byte 0Ah, "%d%s%d%s%d", 0Ah, 0
msg5fmt byte 0Ah, "%d%s%d%s%d", 0Ah, 0Ah, 0

in1fmt  byte "%d", 0

msg1    byte "Enter a number: ", 0
msg2    byte "Enter a larger number: ", 0
msg3    byte "Enter an even larger", 0
msg4    byte "number: ", 0

meq     byte " < ", 0   ;menor que 
maq     byte " > ", 0   ;maior que

x       sdword ?
y       sdword ?
z       sdword ?

        .code
main    proc 
        INVOKE printf, ADDR msg1fmt, ADDR msg1
        INVOKE scanf, ADDR in1fmt, ADDR x
        INVOKE printf, ADDR msg3fmt, ADDR msg2
        INVOKE scanf, ADDR in1fmt, ADDR y
        INVOKE printf, ADDR msg2fmt, ADDR msg3
        INVOKE printf, ADDR msg3fmt, ADDR msg4
        INVOKE scanf, ADDR in1fmt, ADDR z
        INVOKE printf, ADDR msg4fmt, x, ADDR meq, y, ADDR meq, z
        INVOKE printf, ADDR msg5fmt, z, ADDR maq, y, ADDR maq, x
        ret
main    endp
        end




