#include <Servo.h> 
 
Servo myservo;  // create servo object to control a servo 
                // a maximum of eight servo objects can be created 
 
int posE = 175;
int posD = 0; // variable to store the servo position 
int pos = 90;


void setup() 
{ 
  Serial.begin(9600);  
  myservo.attach(9);  // attaches the servo on pin 9 to the servo object 
  myservo.write(pos);  
} 
 
 
void loop() {
                           
 if(Serial.available() > 0)   
  {  
    int entrada = Serial.read();  
  
    switch (entrada){  
      case 'D':  
        direita();  
        break;  
  
      case 'E':  
        esquerda();  
        break;  
      
       case 'R':  
        centro();  
        break;  
  
    }  
  }  
}  
  
   
void centro(){  
  myservo.write(pos);  
  
}  
 
 void direita(){  
  myservo.write(posD);  
  
}  
void esquerda(){  
  myservo.write(posE); 
     
  
}


