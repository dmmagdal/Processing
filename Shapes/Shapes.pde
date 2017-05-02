//Diego Magdaleno
//dmmagdal@ucsc.edu
//1455124
void setup() {
  
 background(0);
 size(500, 400);
 
}

void draw() {
 
  stroke(125);
  strokeWeight(5);
  fill(0, 20, 65);
  rectMode(CENTER);
  rect(125, 200, 40, 100);
  
  stroke(255);
  strokeWeight(2);
  noFill();
  ellipseMode(CORNERS);
  ellipse(0, 25, 200, 200);
  
  stroke(100, 125, 45);
  rect(35, 50, 350, 200);
  
  stroke(50, 50, 100);
  strokeWeight(5);
  fill(100, 60, 0);
  triangle(300, 250, 150, 150, 75, 300);
  
  stroke(100, 150, 100);
  strokeWeight(20);
  point(250, 300);
  
  stroke(255);
  strokeWeight(100);
  line(400, 0, 400, 200);
  
  stroke(25, 0, 50);
  strokeWeight(2);
  fill(240, 0, 20);
  rect(455, 200, 30, 100);
}