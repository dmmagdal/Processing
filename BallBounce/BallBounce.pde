//dmmagdal
//BallBounce
//cmps 5J
//pa6

//ball variables
float x, y, Xspeed, Yspeed;

//environment variables
float gravity, stopSpeed, dissipation;

void setup(){
  size(500, 500);
  smooth();
  
  x = width/2;
  y = 100;
  Xspeed = 0;
  Yspeed = 0;
  
  gravity = 0.6;
  stopSpeed = 0.2;
  dissipation = 0.08;
  
}

void draw(){
  background(0, 255, 255);
  
  y = constrain(y, 50, height-50);
  x = constrain(x, 50, width-50);
  
  displayBall();
  
  if( mousePressed && mouseOnBall() ){
    holdBall();
  }
  else{
   moveBall();
   updateSpeed();
  }
  
}

void displayBall(){
  noStroke();
  fill(255, 0, 0);
  ellipseMode(CENTER);
  ellipse(x, y, 100, 100);
  
}

void holdBall(){
  x = mouseX;
  y = mouseY;
  Xspeed = mouseX - pmouseX;
  Yspeed = mouseY - pmouseY;
  
}

void moveBall(){
  x+=Xspeed;
  y+=Yspeed;
  
}

void updateSpeed(){  
  
  if(abs(Xspeed)<stopSpeed){
   Xspeed = 0; 
  }
  else if(x > width-50){
    Xspeed *= -(1-dissipation);
  }
  else if(x < width-450){
    Xspeed *= -(1-dissipation);
  }
  
  if(abs(Yspeed)<stopSpeed){
   Yspeed = 0; 
  }
  else if(y > height-50){
   Yspeed *= -(1-dissipation); 
  }
  else if (y < height-450){
    Yspeed *= -(1-dissipation);
  }
  Yspeed += gravity;
  
}

boolean mouseOnBall(){
  if (x-50 < mouseX && x+50 > mouseX && y-50 < mouseY && y+50 > mouseY){
    return true;
  }
  else{
    return false; 
  }
}