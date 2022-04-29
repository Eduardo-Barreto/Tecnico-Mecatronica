/*
Uso da biblioteca de botões do MikroC para lidar com problemas de bounce (trepidação)
*/

#define led1 PORTD.B0
#define led2 PORTD.B1

void main(){
	ADCON1 = 0b00001111;
    TRISB = 0b11111111;
    TRISD = 0b00000000;

    while(1){
        // Porta, pino, tempo e estado ligado
        if(Button(&PORTB, 0, 10, 1)){
            led1 = 1;
            led2 = 0;
        }

        if(Button(&PORTB, 1, 10, 1)){
            led1 = 0;
            led2 = 1;
        }
    }
}