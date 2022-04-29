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
        led0 = button0;
        led1 = button1;
        led2 = button2;
    }
}