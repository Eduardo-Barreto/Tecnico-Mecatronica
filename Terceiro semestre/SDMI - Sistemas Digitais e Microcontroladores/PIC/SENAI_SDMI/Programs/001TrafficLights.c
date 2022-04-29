#define     green               PORTD.B1
#define     yellow              PORTD.B2
#define     red                 PORTD.B3

#define     pedestrianGreen     PORTD.B5
#define     pedestrianRed       PORTD.B6

void main() {

    ADCON1 = 0b00001111;
    TRISD = 0b00000000;

    PORTD = 0b00000000;

    while(1){
             red = 0;
             green = 1;
             pedestrianGreen = 0;
             pedestrianRed = 1;
             delay_ms(1000);
             
             green = 0;
             yellow = 1;
             delay_ms(1000);
             
             yellow = 0;
             red = 1;
             pedestrianGreen = 1;
             pedestrianRed = 0;
             delay_ms(1000);
    }
}