#ifndef BLINK_FREQUENCY
#define BLINK_FREQUENCY 1000
#endif

void setup() {
  // initialize digital pin LED_BUILTIN as an output.
  pinMode(LED_BUILTIN, OUTPUT);
  Serial.begin(115200);
}

void loop() {
  digitalWrite(LED_BUILTIN, HIGH);      // turn the LED on (HIGH is the voltage level)
  delay(BLINK_FREQUENCY);               // wait for a BLINK_FREQUENCY ms
  digitalWrite(LED_BUILTIN, LOW);       // turn the LED off by making the voltage LOW
  delay(BLINK_FREQUENCY);               // wait for a BLINK_FREQUENCY ms
  Serial.println("Hello World!");
}
