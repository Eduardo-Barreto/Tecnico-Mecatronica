/*
Uso de ponte H para controle de um motor DC
Chip L298 (igual driver normal)
*/
#define button0 PORTB.B0
#define button1 PORTB.B1
#define button2 PORTB.B2

#define IN1 PORTD.B0
#define IN2 PORTD.B1
#define ENA PORTD.B2

void main(){
    int motorOn = 0;
	ADCON1 = 0b00001111;
    TRISB = 0b11111111;
    TRISD = 0b00000000;

    ENA = 1;

    while(1){
        // Porta, pino, tempo e estado ligado
        IN1 = (button0 || IN1) && ~button2;
        IN2 = (button1 || IN2) && ~button2;

        motorOn = IN1 || IN2;

        if(button2 && motorOn == 1){
            IN1 = ~IN1;
            IN2 = ~IN2;
            delay_ms(1000);
            IN1 = 0;
            IN2 = 0;
        }
    }
}