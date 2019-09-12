//Diego Magdaleno
//dmmagdal
//

int R = 0;
int G = 0;
int B = 0;

void setup(){
  size(500, 500);
  background(0);
  
}

void draw(){
  background(R, G, B);
  stroke(125);
  strokeWeight(12);
  rectMode(CENTER);
  fill(255, 0, 0);
  rect((width/2) - 140, height/2, 100, 100); //Red Button
  fill(0, 255, 0);
  rect(width/2, height/2, 100, 100); //Green Button
  fill(0, 0, 255);
  rect((width/2) + 140, height/2, 100, 100); //Blue Button
  
}

void mousePressed(){
 //Applies set values to the background
 switch(R) { //Adds or Subtracts Red from the background 
   case 0:
     background(R, G, B);
   break;
   case 255:
     background(R, G, B);
   break;
 }
 switch(G) { //Adds or Subtracts Green from the background 
   case 0:
     background(R, G, B);
   break;
   case 255:
     background(R, G, B);
   break;
 }
 switch(B) { //Adds or Subtracts Blue from the background 
   case 0:
     background(R, G, B);
   break;
   case 255:
     background(R, G, B);
   break;
 }
 
 //This will look to set the value for the background
 if (R<125){ 
    R = 255; 
 }
 else if (R>125){
    R = 0; 
 }
 
 if (G<125){
    G = 255;
 }
 else if (G>125){
    G = 0;
 }
 
 if (B<125){
    B = 255; 
 }
 else if (B>125){
    B = 0; 
 }
 
 //Sets up to change values under the conditions of button clicks
 if (mouseX > 200){
   if (mouseX < 300){
    if (mouseY > 200){
     if (mouseY < 300){
       //Put the Code for the Activation/Deactivation of the RED Square
     }
    }
   }
 }
 if (mouseX > 200){
   if (mouseX < 300){
    if (mouseY > 200){
     if (mouseY < 300){
       //Put the Code for the Activation/Deactivation of the GREEN Square
     }
    }
   }
 }
 if (mouseX > 200){
   if (mouseX < 300){
    if (mouseY > 200){
     if (mouseY < 300){
       //Put the Code for the Activation/Deactivation of the BLUE Square
     }
    }
   }
 }
 
}