.gba
.thumb

.open "rom.gba", "test.gba", 0x08000000

.org allocation
.area allocation_size
    .word 0xFEFEFEFE
    .importobj "build/linked.o"
    .word 0xFEFEFEFE
.endarea

.org 0x0806F280
.area 0xDC, 0xFE
    ldr r3, =StartCB_HandleInput |1
    bx r3
    .pool
.endarea

.close
