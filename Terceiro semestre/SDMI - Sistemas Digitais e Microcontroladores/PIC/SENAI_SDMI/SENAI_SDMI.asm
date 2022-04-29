
_main:

;SENAI_SDMI.c,12 :: 		void main(){
;SENAI_SDMI.c,13 :: 		int motorOn = 0;
	CLRF        main_motorOn_L0+0 
	CLRF        main_motorOn_L0+1 
;SENAI_SDMI.c,14 :: 		ADCON1 = 0b00001111;
	MOVLW       15
	MOVWF       ADCON1+0 
;SENAI_SDMI.c,15 :: 		TRISB = 0b11111111;
	MOVLW       255
	MOVWF       TRISB+0 
;SENAI_SDMI.c,16 :: 		TRISD = 0b00000000;
	CLRF        TRISD+0 
;SENAI_SDMI.c,18 :: 		ENA = 1;
	BSF         PORTD+0, 2 
;SENAI_SDMI.c,20 :: 		while(1){
L_main0:
;SENAI_SDMI.c,22 :: 		IN1 = (button0 || IN1) && ~button2;
	BTFSC       PORTB+0, 0 
	GOTO        L__main18
	BTFSC       PORTD+0, 0 
	GOTO        L__main18
	GOTO        L_main5
L__main18:
	BTFSC       PORTB+0, 2 
	GOTO        L__main20
	BSF         STATUS+0, 0 
	GOTO        L__main21
L__main20:
	BCF         STATUS+0, 0 
L__main21:
	BTFSS       STATUS+0, 0 
	GOTO        L_main5
	MOVLW       1
	MOVWF       R0 
	GOTO        L_main4
L_main5:
	CLRF        R0 
L_main4:
	BTFSC       R0, 0 
	GOTO        L__main22
	BCF         PORTD+0, 0 
	GOTO        L__main23
L__main22:
	BSF         PORTD+0, 0 
L__main23:
;SENAI_SDMI.c,23 :: 		IN2 = (button1 || IN2) && ~button2;
	BTFSC       PORTB+0, 1 
	GOTO        L__main17
	BTFSC       PORTD+0, 1 
	GOTO        L__main17
	GOTO        L_main9
L__main17:
	BTFSC       PORTB+0, 2 
	GOTO        L__main24
	BSF         STATUS+0, 0 
	GOTO        L__main25
L__main24:
	BCF         STATUS+0, 0 
L__main25:
	BTFSS       STATUS+0, 0 
	GOTO        L_main9
	MOVLW       1
	MOVWF       R0 
	GOTO        L_main8
L_main9:
	CLRF        R0 
L_main8:
	BTFSC       R0, 0 
	GOTO        L__main26
	BCF         PORTD+0, 1 
	GOTO        L__main27
L__main26:
	BSF         PORTD+0, 1 
L__main27:
;SENAI_SDMI.c,25 :: 		motorOn = IN1 || IN2;
	BTFSC       PORTD+0, 0 
	GOTO        L_main11
	BTFSC       PORTD+0, 1 
	GOTO        L_main11
	CLRF        R0 
	GOTO        L_main10
L_main11:
	MOVLW       1
	MOVWF       R0 
L_main10:
	MOVF        R0, 0 
	MOVWF       main_motorOn_L0+0 
	MOVLW       0
	MOVWF       main_motorOn_L0+1 
;SENAI_SDMI.c,27 :: 		if(button2 && motorOn == 1){
	BTFSS       PORTB+0, 2 
	GOTO        L_main14
	MOVLW       0
	XORWF       main_motorOn_L0+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__main28
	MOVLW       1
	XORWF       main_motorOn_L0+0, 0 
L__main28:
	BTFSS       STATUS+0, 2 
	GOTO        L_main14
L__main16:
;SENAI_SDMI.c,28 :: 		IN1 = ~IN1;
	BTG         PORTD+0, 0 
;SENAI_SDMI.c,29 :: 		IN2 = ~IN2;
	BTG         PORTD+0, 1 
;SENAI_SDMI.c,30 :: 		delay_ms(1000);
	MOVLW       6
	MOVWF       R11, 0
	MOVLW       19
	MOVWF       R12, 0
	MOVLW       173
	MOVWF       R13, 0
L_main15:
	DECFSZ      R13, 1, 1
	BRA         L_main15
	DECFSZ      R12, 1, 1
	BRA         L_main15
	DECFSZ      R11, 1, 1
	BRA         L_main15
	NOP
	NOP
;SENAI_SDMI.c,31 :: 		IN1 = 0;
	BCF         PORTD+0, 0 
;SENAI_SDMI.c,32 :: 		IN2 = 0;
	BCF         PORTD+0, 1 
;SENAI_SDMI.c,33 :: 		}
L_main14:
;SENAI_SDMI.c,34 :: 		}
	GOTO        L_main0
;SENAI_SDMI.c,35 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
