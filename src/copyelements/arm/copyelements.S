    .globl copyelements
    .type copyelements, %function
    .text
copyelements:
    push {lr}
    mov r4, r2
copyelements1:
    cmp r4, r3
    bge copyelements2
    lsl r5, r4, #2
    ldr r6, [r0, r5]
    lsl r5, r4, #1
    strh r6, [r1, r5]
    add r4, #1
    b copyelements1
copyelements2:
    pop {lr}
    bx lr
