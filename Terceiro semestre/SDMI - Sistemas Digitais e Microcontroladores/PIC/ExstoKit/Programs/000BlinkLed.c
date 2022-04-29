#define LED PORTB

void main() {
	ADCON1 = 0b00001111;
	TRISB = 0b11111111;
	TRISD = 0b00000000;

	PORTD = 0b00001111;

	while(1){
		PORD = ~PORTD;
		delay_ms(500);
	}

}