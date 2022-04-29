#line 1 "G:/SENAI/Terceiro semestre/SDMI - Sistemas Digitais e Microcontroladores/PIC/ExstoKit/ExstoKit.c"





int numbers[11] =
{
 0b00111111,
 0b00000110,
 0b01011011,
 0b01001111,
 0b01100110,
 0b01101101,
 0b01111101,
 0b00100111,
 0b01111111,
 0b01101111,
 0b00000000
};

int letters[27] = {
 0b01110111,
 0b01111111,
 0b00111001,
 0b01011110,
 0b01111001,
 0b01110001,
 0b01111101,
 0b01110110,
 0b00000110,
 0b00011110,
 0b10000000,
 0b00111000,
 0b10000000,
 0b01010100,
 0b10111111,
 0b01110011,
 0b01100111,
 0b00110001,
 0b01101101,
 0b01111000,
 0b00111110,
 0b10111110,
 0b10000000,
 0b11110110,
 0b01110010,
 0b01011011,
 0b00000000
};

void resetAll(){
  PORTA.B5  = 1;
  PORTA.B2  = 1;
  PORTE.B0  = 1;
  PORTE.B2  = 1;
 PORTD = 0;
  PORTA.B5  = 0;
  PORTA.B2  = 0;
  PORTE.B0  = 0;
  PORTE.B2  = 0;
}

void resetDisplays(){
  PORTA.B5  = 0;
  PORTA.B2  = 0;
  PORTE.B0  = 0;
  PORTE.B2  = 0;
}

void setDisplay(int _display){
 switch(_display){
 case 1:
  PORTA.B5  = 1;
 break;

 case 2:
  PORTA.B2  = 1;
 break;

 case 3:
  PORTE.B0  = 1;
 break;

 case 4:
  PORTE.B2  = 1;
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
