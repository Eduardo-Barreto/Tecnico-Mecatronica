#define 	display1 	PORTA.B5
#define 	display2 	PORTA.B2
#define 	display3 	PORTE.B0
#define 	display4 	PORTE.B2

int numbers[11] =
{
	0b00111111, // 0
	0b00000110, // 1
	0b01011011, // 2
	0b01001111, // 3
	0b01100110, // 4
	0b01101101, // 5
	0b01111101, // 6
	0b00100111, // 7
	0b01111111, // 8
	0b01101111,	// 9
	0b00000000  // None
};

int letters[27] = {
	0b01110111, // A		0
	0b01111111, // B		1
	0b00111001, // C		2
	0b01011110, // D		3
	0b01111001, // E		4
	0b01110001, // F		5
	0b01111101, // G		6
	0b01110110, // H		7
	0b00000110, // I		8
	0b00011110, // J		9
	0b10000000, // K (.)	10
	0b00111000, // L		11
	0b10000000, // M (.)	12
	0b01010100, // N		13
	0b10111111, // O		14
	0b01110011, // P		15
	0b01100111, // Q		16
	0b00110001, // R		17
	0b01101101, // S		18
	0b01111000, // T		19
	0b00111110, // U		20
	0b10111110, // V		21
	0b10000000, // W (.)	22
	0b11110110, // X		23
	0b01110010, // Y		24
	0b01011011, // Z		25
	0b00000000	// None		26
};

void resetAll(){
	display1 = 1;
	display2 = 1;
	display3 = 1;
	display4 = 1;
	PORTD = 0;
	display1 = 0;
	display2 = 0;
	display3 = 0;
	display4 = 0;
}

void resetDisplays(){
	display1 = 0;
	display2 = 0;
	display3 = 0;
	display4 = 0;
}

void setDisplay(int _display){
	switch(_display){
		case 1:
			display1 = 1;
			break;

		case 2:
			display2 = 1;
			break;

		case 3:
			display3 = 1;
			break;

		case 4:
			display4 = 1;
			break;

		default:
			return;
	}
}

void showNumber(int _display, int _number){
	setDisplay(_display);
	PORTD = numbers[_number];
	delay_ms(1);
	resetDisplays();
}

void showAll(int _numbers[4], int _timer){
	int c = 0;
	for (c; c<=_timer; c++){
		showNumber(1, _numbers[0]);
		showNumber(2, _numbers[1]);
		showNumber(3, _numbers[2]);
		showNumber(4, _numbers[3]);
	}
}

void showLetter(int _display, int _letterIndex){
	setDisplay(_display);
	PORTD = letters[_letterIndex];
	delay_ms(1);
	resetDisplays();
}

void showAll(int _letters[4], int _timer){
	int c = 0;
	for (c; c<=_timer; c++){
		showLetter(1, _letters[0]);
		showLetter(2, _letters[1]);
		showLetter(3, _letters[2]);
		showLetter(4, _letters[3]);
	}
}


void main() {
	ADCON1 = 0b00001111;
	TRISD = 0b00000000;
	TRISA.B5 = 0;
	TRISA.B2 = 0;
	TRISE.B2 = 0;
	TRISE.B0 = 0;

	resetAll();



}
