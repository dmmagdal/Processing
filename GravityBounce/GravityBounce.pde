//------------------------------------------------------------------
// GravityBounce (example 5-9 in Learning Processing)
//------------------------------------------------------------------

float x;      // x coordinate of square
float y;      // y coordinate of square
float speed = 0;  // speed of square

// A new variable, for gravity (i.e. acceleration).  We use a 
// relatively small number (0.1) because this acceleration will 
// accumulate over time, increasing the speed.  Try changing 
// this number to 2.0 and see what happens.
float gravity = 0.1;  

void setup() {
  size(400,400);
  x = width/2;
  y = 5;
}

void draw() {
  background(255);

  // Display the square
  fill(0);
  stroke(0);
  rectMode(CENTER);
  rect(x,y,10,10);
  
  y += speed;       // add speed to location
  speed += gravity; // add gravity (acceleration) to speed
  
  if (y > height-5) {  // hit bottom, so reverse direction
    speed = speed*(-0.93);  
    // Multiplying by -0.93 instead of -1 slows the square down 
    // each time it bounces (by decreasing speed).  This is known 
    // as a "dampening" effect and is a more realistic simulation 
    // of the real world (without it, a ball would bounce forever).
    // Try playing with this parameter, for instance try numbers in
    // the range -0.5 to -1.5.
  }
}