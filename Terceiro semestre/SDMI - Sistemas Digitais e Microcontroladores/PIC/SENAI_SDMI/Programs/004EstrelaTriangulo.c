/*
Partida estrela triângulo com 3 contatores
K1 -> Energiza o motor
K2 -> Fecha em estrela
K3 -> Fecha em triângulo
*/

#define startButton PORTB.B0
#define stopButton PORTB.B1

#define K1 PORTD.B0
#define K2 PORTD.B1
#define K3 PORTD.B2


void main(){
	int timer = 0;
	int startTime = 0;


	ADCON1 = 0b00001111;
    TRISB = 0b11111111;
    TRISD = 0b00000000;
    PORTD = 0b00000000;

    while(1){
    	delay_ms(1);
    	timer ++;

    	if(startButton && ~K1){
    		K1 = 1;
    		startTime = timer;
    	}

    	if(stopButton){
    		K1 = 0;
    		K2 = 0;
    		K3 = 0;
    	}

    	if(K1){
    		K2 = (timer - startTime) < 3000;
    		K3 = ~K2;
    	}


    }


}