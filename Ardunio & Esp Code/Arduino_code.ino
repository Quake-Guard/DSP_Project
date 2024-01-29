#define Vibration_Sensor_Pin 3
#define Buzzer_Pin 4
#define LED_Pin 5
#define ESP_Pin 6
int Vibration_Sensor_State = LOW;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(Buzzer_Pin,OUTPUT);
  pinMode(LED_Pin,OUTPUT);
  pinMode(ESP_Pin,OUTPUT);
  pinMode(Vibration_Sensor_Pin,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  
  //read the state of the sensor 
  Vibration_Sensor_State = digitalRead(Vibration_Sensor_Pin);
  Serial.println(Vibration_Sensor_State);

  //check if the sensor is vibrates or not
  if(Vibration_Sensor_State == HIGH)
  {
    tone(Buzzer_Pin,10000);
    digitalWrite(LED_Pin, HIGH);
    delay(1000);
    digitalWrite(ESP_Pin, HIGH);
    delay(500);
  }
  
  else if(Vibration_Sensor_State == LOW)
  {
    noTone(Buzzer_Pin);
    digitalWrite(LED_Pin, LOW);
    digitalWrite(ESP_Pin, LOW);
  }
  
}
