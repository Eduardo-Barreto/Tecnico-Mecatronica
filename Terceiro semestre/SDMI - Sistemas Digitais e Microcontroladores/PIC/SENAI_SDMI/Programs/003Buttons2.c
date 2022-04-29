/*
3 leds que são controlados por 3 botões

*/

#define button0 PORTB.B0
#define button1 PORTB.B1
#define button2 PORTB.B2

#define led0 PORTD.B0
#define led1 PORTD.B1
#define led2 PORTD.B2


void main() {
    ADCON1 = 0b00001111;
    TRISB = 0b11111111;
    TRISD = 0b00000000;


    PORTD = 0b00000000;

    while(1){
        if (button0){
            while(button0){}
            led0 = ~led0;
        }

        if (button1){
            while(button1){}
            led1 = ~led1;
        }

        if (button2){
            while(button2){}
            led2 = ~led2;
        }

    }
}