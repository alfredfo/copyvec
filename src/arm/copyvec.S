    .globl copyvec
    .type copyvec, %function
    .text
copyvec:
    push {lr}
    mov r3, #0
copyvec1:
    cmp r3, r2
    bge copyvec2
    lsl r5, r3, #2
    ldr r4, [r1, r5]
    lsl r5, r3, #1
    strh r4, [r0, r5]
    add r3, #1
    b copyvec1
copyvec2:
    pop {lr}
    bx lr
