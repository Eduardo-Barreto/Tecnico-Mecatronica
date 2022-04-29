
_resetAll:

;ExstoKit.c,60 :: 		void resetAll(){
;ExstoKit.c,61 :: 		display1 = 1;
	BSF         PORTA+0, 5 
;ExstoKit.c,62 :: 		display2 = 1;
	BSF         PORTA+0, 2 
;ExstoKit.c,63 :: 		display3 = 1;
	BSF         PORTE+0, 0 
;ExstoKit.c,64 :: 		display4 = 1;
	BSF         PORTE+0, 2 
;ExstoKit.c,65 :: 		pinoA = 0;
	BCF         PORTD+0, 0 
;ExstoKit.c,66 :: 		pinoB = 0;
	BCF         PORTD+0, 1 
;ExstoKit.c,67 :: 		pinoC = 0;
	BCF         PORTD+0, 2 
;ExstoKit.c,68 :: 		pinoD = 0;
	BCF         PORTD+0, 3 
;ExstoKit.c,69 :: 		pinoE = 0;
	BCF         PORTD+0, 4 
;ExstoKit.c,70 :: 		pinoF = 0;
	BCF         PORTD+0, 5 
;ExstoKit.c,71 :: 		pinoG = 0;
	BCF         PORTD+0, 6 
;ExstoKit.c,72 :: 		pinoDP = 0;
	BCF         PORTD+0, 7 
;ExstoKit.c,73 :: 		display1 = 0;
	BCF         PORTA+0, 5 
;ExstoKit.c,74 :: 		display2 = 0;
	BCF         PORTA+0, 2 
;ExstoKit.c,75 :: 		display3 = 0;
	BCF         PORTE+0, 0 
;ExstoKit.c,76 :: 		display4 = 0;
	BCF         PORTE+0, 2 
;ExstoKit.c,77 :: 		}
L_end_resetAll:
	RETURN      0
; end of _resetAll

_resetDisplays:

;ExstoKit.c,79 :: 		void resetDisplays(){
;ExstoKit.c,80 :: 		display1 = 0;
	BCF         PORTA+0, 5 
;ExstoKit.c,81 :: 		display2 = 0;
	BCF         PORTA+0, 2 
;ExstoKit.c,82 :: 		display3 = 0;
	BCF         PORTE+0, 0 
;ExstoKit.c,83 :: 		display4 = 0;
	BCF         PORTE+0, 2 
;ExstoKit.c,84 :: 		}
L_end_resetDisplays:
	RETURN      0
; end of _resetDisplays

_setNumber:

;ExstoKit.c,86 :: 		void setNumber(int _display, int _number){
;ExstoKit.c,87 :: 		switch(_display){
	GOTO        L_setNumber0
;ExstoKit.c,88 :: 		case 1:
L_setNumber2:
;ExstoKit.c,89 :: 		display1 = 1;
	BSF         PORTA+0, 5 
;ExstoKit.c,90 :: 		break;
	GOTO        L_setNumber1
;ExstoKit.c,92 :: 		case 2:
L_setNumber3:
;ExstoKit.c,93 :: 		display2 = 1;
	BSF         PORTA+0, 2 
;ExstoKit.c,94 :: 		break;
	GOTO        L_setNumber1
;ExstoKit.c,96 :: 		case 3:
L_setNumber4:
;ExstoKit.c,97 :: 		display3 = 1;
	BSF         PORTE+0, 0 
;ExstoKit.c,98 :: 		break;
	GOTO        L_setNumber1
;ExstoKit.c,100 :: 		case 4:
L_setNumber5:
;ExstoKit.c,101 :: 		display4 = 1;
	BSF         PORTE+0, 2 
;ExstoKit.c,102 :: 		break;
	GOTO        L_setNumber1
;ExstoKit.c,104 :: 		default:
L_setNumber6:
;ExstoKit.c,105 :: 		return;
	GOTO        L_end_setNumber
;ExstoKit.c,106 :: 		}
L_setNumber0:
	MOVLW       0
	XORWF       FARG_setNumber__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setNumber30
	MOVLW       1
	XORWF       FARG_setNumber__display+0, 0 
L__setNumber30:
	BTFSC       STATUS+0, 2 
	GOTO        L_setNumber2
	MOVLW       0
	XORWF       FARG_setNumber__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setNumber31
	MOVLW       2
	XORWF       FARG_setNumber__display+0, 0 
L__setNumber31:
	BTFSC       STATUS+0, 2 
	GOTO        L_setNumber3
	MOVLW       0
	XORWF       FARG_setNumber__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setNumber32
	MOVLW       3
	XORWF       FARG_setNumber__display+0, 0 
L__setNumber32:
	BTFSC       STATUS+0, 2 
	GOTO        L_setNumber4
	MOVLW       0
	XORWF       FARG_setNumber__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setNumber33
	MOVLW       4
	XORWF       FARG_setNumber__display+0, 0 
L__setNumber33:
	BTFSC       STATUS+0, 2 
	GOTO        L_setNumber5
	GOTO        L_setNumber6
L_setNumber1:
;ExstoKit.c,107 :: 		PORTD = numbers[_number];
	MOVF        FARG_setNumber__number+0, 0 
	MOVWF       R0 
	MOVF        FARG_setNumber__number+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _numbers+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_numbers+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;ExstoKit.c,108 :: 		delay_ms(1);
	MOVLW       7
	MOVWF       R12, 0
	MOVLW       125
	MOVWF       R13, 0
L_setNumber7:
	DECFSZ      R13, 1, 1
	BRA         L_setNumber7
	DECFSZ      R12, 1, 1
	BRA         L_setNumber7
;ExstoKit.c,109 :: 		resetDisplays();
	CALL        _resetDisplays+0, 0
;ExstoKit.c,110 :: 		}
L_end_setNumber:
	RETURN      0
; end of _setNumber

_setNumbers:

;ExstoKit.c,112 :: 		void setNumbers(int _numbers[4], int _timer){
;ExstoKit.c,113 :: 		int c = 0;
	CLRF        setNumbers_c_L0+0 
	CLRF        setNumbers_c_L0+1 
;ExstoKit.c,114 :: 		for (c; c<=_timer; c++){
L_setNumbers8:
	MOVLW       128
	XORWF       FARG_setNumbers__timer+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       setNumbers_c_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setNumbers35
	MOVF        setNumbers_c_L0+0, 0 
	SUBWF       FARG_setNumbers__timer+0, 0 
L__setNumbers35:
	BTFSS       STATUS+0, 0 
	GOTO        L_setNumbers9
;ExstoKit.c,115 :: 		setNumber(1, _numbers[0]);
	MOVLW       1
	MOVWF       FARG_setNumber__display+0 
	MOVLW       0
	MOVWF       FARG_setNumber__display+1 
	MOVFF       FARG_setNumbers__numbers+0, FSR0L+0
	MOVFF       FARG_setNumbers__numbers+1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+1 
	CALL        _setNumber+0, 0
;ExstoKit.c,116 :: 		setNumber(2, _numbers[1]);
	MOVLW       2
	MOVWF       FARG_setNumber__display+0 
	MOVLW       0
	MOVWF       FARG_setNumber__display+1 
	MOVLW       2
	ADDWF       FARG_setNumbers__numbers+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_setNumbers__numbers+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+1 
	CALL        _setNumber+0, 0
;ExstoKit.c,117 :: 		setNumber(3, _numbers[2]);
	MOVLW       3
	MOVWF       FARG_setNumber__display+0 
	MOVLW       0
	MOVWF       FARG_setNumber__display+1 
	MOVLW       4
	ADDWF       FARG_setNumbers__numbers+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_setNumbers__numbers+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+1 
	CALL        _setNumber+0, 0
;ExstoKit.c,118 :: 		setNumber(4, _numbers[3]);
	MOVLW       4
	MOVWF       FARG_setNumber__display+0 
	MOVLW       0
	MOVWF       FARG_setNumber__display+1 
	MOVLW       6
	ADDWF       FARG_setNumbers__numbers+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_setNumbers__numbers+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setNumber__number+1 
	CALL        _setNumber+0, 0
;ExstoKit.c,114 :: 		for (c; c<=_timer; c++){
	INFSNZ      setNumbers_c_L0+0, 1 
	INCF        setNumbers_c_L0+1, 1 
;ExstoKit.c,119 :: 		}
	GOTO        L_setNumbers8
L_setNumbers9:
;ExstoKit.c,120 :: 		}
L_end_setNumbers:
	RETURN      0
; end of _setNumbers

_setLetter:

;ExstoKit.c,122 :: 		void setLetter(int _display, int _letterIndex){
;ExstoKit.c,123 :: 		switch(_display){
	GOTO        L_setLetter11
;ExstoKit.c,124 :: 		case 1:
L_setLetter13:
;ExstoKit.c,125 :: 		display1 = 1;
	BSF         PORTA+0, 5 
;ExstoKit.c,126 :: 		break;
	GOTO        L_setLetter12
;ExstoKit.c,128 :: 		case 2:
L_setLetter14:
;ExstoKit.c,129 :: 		display2 = 1;
	BSF         PORTA+0, 2 
;ExstoKit.c,130 :: 		break;
	GOTO        L_setLetter12
;ExstoKit.c,132 :: 		case 3:
L_setLetter15:
;ExstoKit.c,133 :: 		display3 = 1;
	BSF         PORTE+0, 0 
;ExstoKit.c,134 :: 		break;
	GOTO        L_setLetter12
;ExstoKit.c,136 :: 		case 4:
L_setLetter16:
;ExstoKit.c,137 :: 		display4 = 1;
	BSF         PORTE+0, 2 
;ExstoKit.c,138 :: 		break;
	GOTO        L_setLetter12
;ExstoKit.c,140 :: 		default:
L_setLetter17:
;ExstoKit.c,141 :: 		return;
	GOTO        L_end_setLetter
;ExstoKit.c,142 :: 		}
L_setLetter11:
	MOVLW       0
	XORWF       FARG_setLetter__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setLetter37
	MOVLW       1
	XORWF       FARG_setLetter__display+0, 0 
L__setLetter37:
	BTFSC       STATUS+0, 2 
	GOTO        L_setLetter13
	MOVLW       0
	XORWF       FARG_setLetter__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setLetter38
	MOVLW       2
	XORWF       FARG_setLetter__display+0, 0 
L__setLetter38:
	BTFSC       STATUS+0, 2 
	GOTO        L_setLetter14
	MOVLW       0
	XORWF       FARG_setLetter__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setLetter39
	MOVLW       3
	XORWF       FARG_setLetter__display+0, 0 
L__setLetter39:
	BTFSC       STATUS+0, 2 
	GOTO        L_setLetter15
	MOVLW       0
	XORWF       FARG_setLetter__display+1, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setLetter40
	MOVLW       4
	XORWF       FARG_setLetter__display+0, 0 
L__setLetter40:
	BTFSC       STATUS+0, 2 
	GOTO        L_setLetter16
	GOTO        L_setLetter17
L_setLetter12:
;ExstoKit.c,143 :: 		PORTD = letters[_letterIndex];
	MOVF        FARG_setLetter__letterIndex+0, 0 
	MOVWF       R0 
	MOVF        FARG_setLetter__letterIndex+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVLW       _letters+0
	ADDWF       R0, 0 
	MOVWF       FSR0L+0 
	MOVLW       hi_addr(_letters+0)
	ADDWFC      R1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       PORTD+0 
;ExstoKit.c,144 :: 		delay_ms(1);
	MOVLW       7
	MOVWF       R12, 0
	MOVLW       125
	MOVWF       R13, 0
L_setLetter18:
	DECFSZ      R13, 1, 1
	BRA         L_setLetter18
	DECFSZ      R12, 1, 1
	BRA         L_setLetter18
;ExstoKit.c,145 :: 		resetDisplays();
	CALL        _resetDisplays+0, 0
;ExstoKit.c,146 :: 		}
L_end_setLetter:
	RETURN      0
; end of _setLetter

_setWord:

;ExstoKit.c,148 :: 		void setWord(int _letters[4], int _timer){
;ExstoKit.c,149 :: 		int c = 0;
	CLRF        setWord_c_L0+0 
	CLRF        setWord_c_L0+1 
;ExstoKit.c,150 :: 		for (c; c<=_timer; c++){
L_setWord19:
	MOVLW       128
	XORWF       FARG_setWord__timer+1, 0 
	MOVWF       R0 
	MOVLW       128
	XORWF       setWord_c_L0+1, 0 
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__setWord42
	MOVF        setWord_c_L0+0, 0 
	SUBWF       FARG_setWord__timer+0, 0 
L__setWord42:
	BTFSS       STATUS+0, 0 
	GOTO        L_setWord20
;ExstoKit.c,151 :: 		setLetter(1, _letters[0]);
	MOVLW       1
	MOVWF       FARG_setLetter__display+0 
	MOVLW       0
	MOVWF       FARG_setLetter__display+1 
	MOVFF       FARG_setWord__letters+0, FSR0L+0
	MOVFF       FARG_setWord__letters+1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+1 
	CALL        _setLetter+0, 0
;ExstoKit.c,152 :: 		setLetter(2, _letters[1]);
	MOVLW       2
	MOVWF       FARG_setLetter__display+0 
	MOVLW       0
	MOVWF       FARG_setLetter__display+1 
	MOVLW       2
	ADDWF       FARG_setWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_setWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+1 
	CALL        _setLetter+0, 0
;ExstoKit.c,153 :: 		setLetter(3, _letters[2]);
	MOVLW       3
	MOVWF       FARG_setLetter__display+0 
	MOVLW       0
	MOVWF       FARG_setLetter__display+1 
	MOVLW       4
	ADDWF       FARG_setWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_setWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+1 
	CALL        _setLetter+0, 0
;ExstoKit.c,154 :: 		setLetter(4, _letters[3]);
	MOVLW       4
	MOVWF       FARG_setLetter__display+0 
	MOVLW       0
	MOVWF       FARG_setLetter__display+1 
	MOVLW       6
	ADDWF       FARG_setWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_setWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       FARG_setLetter__letterIndex+1 
	CALL        _setLetter+0, 0
;ExstoKit.c,150 :: 		for (c; c<=_timer; c++){
	INFSNZ      setWord_c_L0+0, 1 
	INCF        setWord_c_L0+1, 1 
;ExstoKit.c,155 :: 		}
	GOTO        L_setWord19
L_setWord20:
;ExstoKit.c,156 :: 		}
L_end_setWord:
	RETURN      0
; end of _setWord

_slideWord:

;ExstoKit.c,158 :: 		void slideWord(int _letters[8], int _timer){
;ExstoKit.c,162 :: 		for(counter=0; counter<8; counter++){
	CLRF        slideWord_counter_L0+0 
	CLRF        slideWord_counter_L0+1 
L_slideWord22:
	MOVLW       128
	XORWF       slideWord_counter_L0+1, 0 
	MOVWF       R0 
	MOVLW       128
	SUBWF       R0, 0 
	BTFSS       STATUS+0, 2 
	GOTO        L__slideWord44
	MOVLW       8
	SUBWF       slideWord_counter_L0+0, 0 
L__slideWord44:
	BTFSC       STATUS+0, 0 
	GOTO        L_slideWord23
;ExstoKit.c,163 :: 		_letters[0] = _letters[counter-7];
	MOVLW       7
	SUBWF       slideWord_counter_L0+0, 0 
	MOVWF       R3 
	MOVLW       0
	SUBWFB      slideWord_counter_L0+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        FARG_slideWord__letters+0, 0 
	ADDWF       R0, 1 
	MOVF        FARG_slideWord__letters+1, 0 
	ADDWFC      R1, 1 
	MOVFF       FARG_slideWord__letters+0, FSR1L+0
	MOVFF       FARG_slideWord__letters+1, FSR1H+0
	MOVFF       R0, FSR0L+0
	MOVFF       R1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,164 :: 		_letters[1] = _letters[counter-6];
	MOVLW       2
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       6
	SUBWF       slideWord_counter_L0+0, 0 
	MOVWF       R3 
	MOVLW       0
	SUBWFB      slideWord_counter_L0+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,165 :: 		_letters[2] = _letters[counter-5];
	MOVLW       4
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       5
	SUBWF       slideWord_counter_L0+0, 0 
	MOVWF       R3 
	MOVLW       0
	SUBWFB      slideWord_counter_L0+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,166 :: 		_letters[3] = _letters[counter-4];
	MOVLW       6
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       4
	SUBWF       slideWord_counter_L0+0, 0 
	MOVWF       R3 
	MOVLW       0
	SUBWFB      slideWord_counter_L0+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,167 :: 		_letters[4] = _letters[counter-3];
	MOVLW       8
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       3
	SUBWF       slideWord_counter_L0+0, 0 
	MOVWF       R3 
	MOVLW       0
	SUBWFB      slideWord_counter_L0+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,168 :: 		_letters[5] = _letters[counter-2];
	MOVLW       10
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       2
	SUBWF       slideWord_counter_L0+0, 0 
	MOVWF       R3 
	MOVLW       0
	SUBWFB      slideWord_counter_L0+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,169 :: 		_letters[6] = _letters[counter-1];
	MOVLW       12
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR1L+1 
	MOVLW       1
	SUBWF       slideWord_counter_L0+0, 0 
	MOVWF       R3 
	MOVLW       0
	SUBWFB      slideWord_counter_L0+1, 0 
	MOVWF       R4 
	MOVF        R3, 0 
	MOVWF       R0 
	MOVF        R4, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,170 :: 		_letters[7] = _letters[counter];
	MOVLW       14
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR1L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR1L+1 
	MOVF        slideWord_counter_L0+0, 0 
	MOVWF       R0 
	MOVF        slideWord_counter_L0+1, 0 
	MOVWF       R1 
	RLCF        R0, 1 
	BCF         R0, 0 
	RLCF        R1, 1 
	MOVF        R0, 0 
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVF        R1, 0 
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       POSTINC1+0 
;ExstoKit.c,172 :: 		wordOne[0] = _letters[0];
	MOVFF       FARG_slideWord__letters+0, FSR0L+0
	MOVFF       FARG_slideWord__letters+1, FSR0H+0
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+1 
;ExstoKit.c,173 :: 		wordOne[1] = _letters[1];
	MOVLW       2
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+2 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+3 
;ExstoKit.c,174 :: 		wordOne[2] = _letters[2];
	MOVLW       4
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+4 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+5 
;ExstoKit.c,175 :: 		wordOne[3] = _letters[3];
	MOVLW       6
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+6 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordOne_L0+7 
;ExstoKit.c,177 :: 		wordTwo[0] = _letters[4];
	MOVLW       8
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+0 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+1 
;ExstoKit.c,178 :: 		wordTwo[1] = _letters[5];
	MOVLW       10
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+2 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+3 
;ExstoKit.c,179 :: 		wordTwo[2] = _letters[6];
	MOVLW       12
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+4 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+5 
;ExstoKit.c,180 :: 		wordTwo[3] = _letters[7];
	MOVLW       14
	ADDWF       FARG_slideWord__letters+0, 0 
	MOVWF       FSR0L+0 
	MOVLW       0
	ADDWFC      FARG_slideWord__letters+1, 0 
	MOVWF       FSR0L+1 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+6 
	MOVF        POSTINC0+0, 0 
	MOVWF       slideWord_wordTwo_L0+7 
;ExstoKit.c,181 :: 		setWord(wordOne, _timer);
	MOVLW       slideWord_wordOne_L0+0
	MOVWF       FARG_setWord__letters+0 
	MOVLW       hi_addr(slideWord_wordOne_L0+0)
	MOVWF       FARG_setWord__letters+1 
	MOVF        FARG_slideWord__timer+0, 0 
	MOVWF       FARG_setWord__timer+0 
	MOVF        FARG_slideWord__timer+1, 0 
	MOVWF       FARG_setWord__timer+1 
	CALL        _setWord+0, 0
;ExstoKit.c,182 :: 		setWord(wordTwo, _timer);
	MOVLW       slideWord_wordTwo_L0+0
	MOVWF       FARG_setWord__letters+0 
	MOVLW       hi_addr(slideWord_wordTwo_L0+0)
	MOVWF       FARG_setWord__letters+1 
	MOVF        FARG_slideWord__timer+0, 0 
	MOVWF       FARG_setWord__timer+0 
	MOVF        FARG_slideWord__timer+1, 0 
	MOVWF       FARG_setWord__timer+1 
	CALL        _setWord+0, 0
;ExstoKit.c,162 :: 		for(counter=0; counter<8; counter++){
	INFSNZ      slideWord_counter_L0+0, 1 
	INCF        slideWord_counter_L0+1, 1 
;ExstoKit.c,183 :: 		}
	GOTO        L_slideWord22
L_slideWord23:
;ExstoKit.c,184 :: 		}
L_end_slideWord:
	RETURN      0
; end of _slideWord

_main:

;ExstoKit.c,186 :: 		void main() {
;ExstoKit.c,187 :: 		int sexshop[8] = {18, 4, 23, 26, 18, 7, 14, 15};
	MOVLW       ?ICSmain_sexshop_L0+0
	MOVWF       TBLPTRL+0 
	MOVLW       hi_addr(?ICSmain_sexshop_L0+0)
	MOVWF       TBLPTRL+1 
	MOVLW       higher_addr(?ICSmain_sexshop_L0+0)
	MOVWF       TBLPTRL+2 
	MOVLW       main_sexshop_L0+0
	MOVWF       FSR1L+0 
	MOVLW       hi_addr(main_sexshop_L0+0)
	MOVWF       FSR1L+1 
	MOVLW       16
	MOVWF       R0 
	MOVLW       1
	MOVWF       R1 
	CALL        ___CC2DW+0, 0
;ExstoKit.c,188 :: 		ADCON1 = 0b00001111;
	MOVLW       15
	MOVWF       ADCON1+0 
;ExstoKit.c,189 :: 		TRISD = 0b00000000;
	CLRF        TRISD+0 
;ExstoKit.c,190 :: 		TRISA.B5 = 0;
	BCF         TRISA+0, 5 
;ExstoKit.c,191 :: 		TRISA.B2 = 0;
	BCF         TRISA+0, 2 
;ExstoKit.c,192 :: 		TRISE.B2 = 0;
	BCF         TRISE+0, 2 
;ExstoKit.c,193 :: 		TRISE.B0 = 0;
	BCF         TRISE+0, 0 
;ExstoKit.c,195 :: 		resetAll();
	CALL        _resetAll+0, 0
;ExstoKit.c,197 :: 		while(1){
L_main25:
;ExstoKit.c,198 :: 		slideWord(sexshop, 300);
	MOVLW       main_sexshop_L0+0
	MOVWF       FARG_slideWord__letters+0 
	MOVLW       hi_addr(main_sexshop_L0+0)
	MOVWF       FARG_slideWord__letters+1 
	MOVLW       44
	MOVWF       FARG_slideWord__timer+0 
	MOVLW       1
	MOVWF       FARG_slideWord__timer+1 
	CALL        _slideWord+0, 0
;ExstoKit.c,199 :: 		}
	GOTO        L_main25
;ExstoKit.c,203 :: 		}
L_end_main:
	GOTO        $+0
; end of _main
