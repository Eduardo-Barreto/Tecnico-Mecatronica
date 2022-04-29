#line 1 "G:/SENAI/Terceiro semestre/SDMI - Sistemas Digitais e Microcontroladores/PIC/SENAI_SDMI/SENAI_SDMI.c"
#line 12 "G:/SENAI/Terceiro semestre/SDMI - Sistemas Digitais e Microcontroladores/PIC/SENAI_SDMI/SENAI_SDMI.c"
void main(){
 int motorOn = 0;
 ADCON1 = 0b00001111;
 TRISB = 0b11111111;
 TRISD = 0b00000000;

  PORTD.B2  = 1;

 while(1){

  PORTD.B0  = ( PORTB.B0  ||  PORTD.B0 ) && ~ PORTB.B2 ;
  PORTD.B1  = ( PORTB.B1  ||  PORTD.B1 ) && ~ PORTB.B2 ;

 motorOn =  PORTD.B0  ||  PORTD.B1 ;

 if( PORTB.B2  && motorOn == 1){
  PORTD.B0  = ~ PORTD.B0 ;
  PORTD.B1  = ~ PORTD.B1 ;
 delay_ms(1000);
  PORTD.B0  = 0;
  PORTD.B1  = 0;
 }
 }
}
