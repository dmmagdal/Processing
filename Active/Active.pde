//Diego Magdaleno
//dmmagdal
//cmps 5J
//pa3

int x = 0;
int y = 0;
int z = 200;

int a = 1000;
int b = 500;

void setup() {
  size(1000, 500);
  background(255);
  
}

void draw() {
  println("To Place a TRIANGLE, Click the MOUSE Once.");
  println("To Draw FREEHAND, Click and Drag the MOUSE.");
  println("To Draw a set of RECTANGLES, Press ANY KEY.");

  
  fill(50, 125, 125);
  rect(x, y, 50, 50);
  
  x = x + 1;
  y = y + 2;
  
  a = a -1;
  
  rect(z, y, 50, 50);
  rect(x, z, 50, 50);
  
  b = b - 2;
  
  fill(a, x, y, z);
  ellipse(a%1000, b%500, 100, 100);
}

void mouseClicked() {
  stroke(0);
  fill(0, 255, 0);
  triangle(mouseX, mouseY, mouseX + 30, mouseY, mouseX + 15, mouseY + 30);  
  
}

void mouseDragged() {
  stroke(0);
  strokeWeight(2);
  line(pmouseX, pmouseY, mouseX, mouseY);
  
}

void keyPressed() {
 fill(abs(mouseX - 650), 0, abs(mouseY - 100));
 rect(mouseX, mouseY, 25, 50); 
 rect(abs(mouseX - 30), abs(mouseY - 50), 85, 5);
}