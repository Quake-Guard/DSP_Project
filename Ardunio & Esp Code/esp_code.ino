#include <WiFi.h>
#include <ESP32Firebase.h>

#define REFERENCE_URL "https://dsp-project-7031b-default-rtdb.firebaseio.com/"  // Your Firebase project reference url
#define WIFI_SSID "Redmi Note 12"
#define WIFI_PASSWORD "Hassan6112001@@"

#define BUTTON_PIN 5 // Replace with the actual GPIO pin you're using for the button

//Create an inestance from the library
Firebase firebase(REFERENCE_URL);

int switchState = 1;
void setup() {
  Serial.begin(115200);

  // Setup button pin
  pinMode(BUTTON_PIN, INPUT_PULLUP);

  // Connect to Wi-Fi
  WiFi.begin(WIFI_SSID, WIFI_PASSWORD);
  Serial.print("Connecting to WiFi");
  while (WiFi.status() != WL_CONNECTED) {
    Serial.print(".");
    delay(200);
  }
  Serial.println("");
  Serial.println("Connected to WiFi");
}

void loop() {
  switchState = digitalRead(BUTTON_PIN);
  
  if (switchState == LOW)
  {
    Serial.println("I Will Push");
    firebase.setInt("isTrue", 1);
  }


}
