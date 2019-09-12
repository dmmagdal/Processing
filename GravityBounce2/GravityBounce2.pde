//----------------------------------------------------------------------
// GravityBounce2
// A better version of Gravity Bounce
//----------------------------------------------------------------------

// size, location and speed of square
float r, x, y, speed;

// physical environment
float gravity, stopSpeed, dissipation;

void setup() {
  size(500,500);
  smooth();
  rectMode(RADIUS);
  
  // initialize square
  r = 50;
  x = width/2;
  y = r;
  speed = 0;
  
  // initialize physical environment
  gravity = 0.6; 
  stopSpeed = 0.2;
  dissipation = .08;
  
}

void draw() {
  background(255,0,255);

  // display square
  y = constrain(y,r,height-r);
  fill(0,255,0);
  noStroke();
  rect(x,y,r,r);
  
  // move square
  y += speed; 
  
  // update speed
  if( abs(speed)<stopSpeed ){
    speed = 0.0;
  }else if( y > height-r ){
    speed *= -(1-dissipation);
  }
  speed += gravity;
}