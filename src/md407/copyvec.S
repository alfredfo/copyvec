    .globl copyvec
    .type copyvec, %function
    .text
copyvec:
    push {lr}
    pop {lr}
    bx lr
