//dmmagdal
//cmps 5J
//pa4

int R = 0;
int G = 0;
int B = 0;

int hue = 255;

boolean ROn;
boolean GOn;
boolean BOn;

void setup(){
  size(500, 500);
  background(0);
  println("black");
  
}

void draw(){
  //background(R, G, B);
  stroke(125);
  strokeWeight(12);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect((width/2) - 150, height/2, 100, 100); //Red Button
  fill(0, 255, 0);
  rect(width/2, height/2, 100, 100); //Green Button
  fill(0, 0, 255);
  rect((width/2) + 150, height/2, 100, 100); //Blue Button
  
   //Sets a border to indicate whether or not a color button is active
 if (ROn == true){ //Red button
   noFill();
   stroke(0);
   strokeWeight(2);
   rect((width/2) - 150, height/2, 100, 100);
 }
 if (GOn == true){ //Green button
   noFill();
   stroke(0);
   strokeWeight(2);
   rect(width/2, height/2, 100, 100);
 }
 if (BOn == true){ //Blue button
   noFill();
   stroke(0);
   strokeWeight(2);
   rect((width/2) + 150, height/2, 100, 100);
 }
 
}

void mousePressed(){ 
 //Sets up to change values under the conditions of button clicks
 if (mouseX > 50 && mouseX < 150 && mouseY > 200 && mouseY < 300){ //All pixel coordinates within the Red button
   //Put the Code for the Activation/Deactivation of the RED Square
   if (R == 255){
     R -= hue;
     ROn = false;
     background(R, G, B);
   }
   else {
     R += hue;
     ROn = true;
     background(R, G, B);
   }
 }
 if (mouseX > 200 && mouseX < 300 && mouseY > 200 && mouseY < 300){ //All pixel coordinates within the Green button
   //Put the Code for the Activation/Deactivation of the GREEN Square
   if (G == 255){
     G -= hue; 
     GOn = false;
     background(R, G, B);
   }
   else {
     G += hue;
     GOn = true;
     background(R, G, B);
   }
 }
 if (mouseX > 350 && mouseX < 450 && mouseY > 200 && mouseY < 300){ //All pixel coordinates within the Blue button
   //Put the Code for the Activation/Deactivation of the BLUE Square
   if (B == 255){
     B -= hue; 
     BOn = false;
     background(R, G, B);
   }
   else {
     B += hue; 
     BOn = true;
     background(R, G, B);
   }
 }
 
 //Sets what color to print in the command line
 if ((ROn == false) && (GOn == false) && (BOn == false)){
   println("black");
 }
 else if ((ROn == true) && (GOn == false) && (BOn == false)){
   println("red");
 }
 else if ((ROn == false) && (GOn == true) && (BOn == false)){
   println("green");
 }
 else if ((ROn == false) && (GOn == false) && (BOn == false)){
   println("blue"); 
 }
 else if ((ROn == true) && (GOn == true) && (BOn == false)){
   println("yellow");
 }
 else if ((ROn == true) && (GOn == false) && (BOn == true)){
   println("magenta");
 }
 else if ((ROn == false) && (GOn == true) && (BOn == true)){
   println("cyan");
 }
 else if ((ROn == true) && (GOn == true) && (BOn == true)){
   println("white");
 }
 
}