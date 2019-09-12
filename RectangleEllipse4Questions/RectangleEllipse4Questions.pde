void setup(){
 size(500, 400); 
 background(0);
}

void draw(){
  if (mousePressed) {
     background(0); 
  }
  
  stroke (255, 0, 255);
  fill(0);
  rect(mouseX, mouseY, 75, 100);
  
  stroke (100, 100, 100);
  fill(25, 65, 200);
  ellipse(mouseY, 50, 200, 200);
}