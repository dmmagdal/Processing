void setup(){
 size(500, 400); 
}

void draw(){
  background(0);
  
  stroke(125, 125, 0);
  fill(0, 125, 45);
  ellipse(250, 200, 200, 200);
  
  fill(65, 85, 200);
  rect(mouseY, mouseX, 75, 75);
}