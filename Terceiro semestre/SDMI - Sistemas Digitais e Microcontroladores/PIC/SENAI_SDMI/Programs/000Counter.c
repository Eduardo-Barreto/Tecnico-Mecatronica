
void main() {

    int counter = 0;
    ADCON1 = 0b00001111;
    TRISD = 0b00000000;
    TRISB = 0b11111111;

    PORTD = 0b00000000;


    while(1){
        if(PORTB.B0 == 1){
            counter = (counter < 0b11111111) ? (counter+1) : counter;
            while(PORTB.B0){
                delay_ms(16);
            }
        }
        if(PORTB.B1 == 1){
            counter = (counter > 0b00000000) ? (counter-1) : 0;
            while(PORTB.B1){
                delay_ms(16);
            }
        }

        PORTD = counter;
    }
}