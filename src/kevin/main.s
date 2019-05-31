@;
@;  A simple program to blink the OK/ACT LED on Raspberry Pi 3
@;
@;  0x30D40 = 200000 microseconds = 200 miliseconds
@;  0x1E8480 = 2000000 microseconds = 2 seconds


.section .init                      @; kernel initialization code must be on 0x8000
.global _start                      @; define _start label globally available for the linker
_start:
    mov         sp, #0x8000         @; set up the stack pointer
    b           _main               @; branch to main routine

.section .text
_main:
    loop$:                          @; main loop
        @;44239
        @;Digit Pertama: 4
        @;1-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;1-------------------------------------------------------------------
        @;2-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;2-------------------------------------------------------------------
        @;3-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;3-------------------------------------------------------------------
        @;4-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)                     
        bl      delay               @; branch to delay function
        @;4-------------------------------------------------------------------
        @;Digit Pertama Selesai
           
        @;Digit Kedua: 4
        @;1-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;1-------------------------------------------------------------------
        @;2-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;2-------------------------------------------------------------------
        @;3-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;3-------------------------------------------------------------------
        @;4-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)                     
        bl      delay               @; branch to delay function
        @;4-------------------------------------------------------------------
        @;Digit Kedua Selesai

        @;Digit Ketiga: 2
        @;1-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;1-------------------------------------------------------------------
        @;2-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;2-------------------------------------------------------------------
        @;3-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;3-------------------------------------------------------------------
        @;4-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;4-------------------------------------------------------------------
        @;5-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;5-------------------------------------------------------------------
        @;6-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;6-------------------------------------------------------------------
        @;7-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;7-------------------------------------------------------------------
        
        @;Digit Ketiga Selesai

        @;Digit Keempat: 3
        @;1-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;1-------------------------------------------------------------------
        @;2-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;2-------------------------------------------------------------------
        @;3-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;3-------------------------------------------------------------------
        @;4-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;4-------------------------------------------------------------------
        @;5-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;5-------------------------------------------------------------------
        @;6-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;6-------------------------------------------------------------------
        @;7-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;7-------------------------------------------------------------------
        @;8-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;8-------------------------------------------------------------------
        @;9-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x1E8480       @; delay in microseconds (2s)
        bl      delay               @; branch to delay function
        @;9-------------------------------------------------------------------
        @;Digit Keempat Selesai

        @;Digit Kelima: 8
        @;1-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;1-------------------------------------------------------------------
        @;2-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;2-------------------------------------------------------------------
        @;3-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;3-------------------------------------------------------------------
        @;4-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)                     
        bl      delay               @; branch to delay function
        @;4-------------------------------------------------------------------
        @;5-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;5-------------------------------------------------------------------
        @;6-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;6-------------------------------------------------------------------
        @;7-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function
        @;7-------------------------------------------------------------------
        @;8-----------------------------------------------------------------
        @; enable led
        mov     r0, #1              @; led state 1 = on
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)
        bl      delay               @; branch to delay function

        @; disable led
        mov     r0, #0              @; led state 0 = off
        bl      set_led_state       @; set led state

        ldr     r0, =0x30D40       @; delay in microseconds (200ms)                     
        bl      delay               @; branch to delay function
        @;8-------------------------------------------------------------------
       
        @;Digit Kelima Selesai

        b       loop$               @; branch to main loop$
