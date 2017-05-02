//dmmagdal
//cmps 5J
//pa5

int LineX = 0;
int LineY = 0;

int M0useX;
int M0useY;

int i, j; //X and Y increment to square number, Respectively

int x, y;

boolean MousePaint;

void setup(){
  size(500, 500);
  background(255);
  while(LineX != 500){
    line(LineX, 0, LineX, 500);
    LineX += 20;
  }
  while(LineY != 500){
    line(0, LineY, 500, LineY);
    LineY += 20;
  }
}

void draw(){

}

void mousePressed(){
  
  //multiply! 20i and 20j where i and j are the integers of the increment
  //distance between mousX and 20i is less than 20 and greater than or equal to zero
  //0 <=mouseX - 20i< 20
  //add 20 ito all terms or 20i <= mouseX < 20 +20i
  //divide by 20 
  //i<= mouseX/20 < 1+i
  //look familiar? kinda like a floor() function which takes the closest integer
  //i = floor(mouseX/20)
  //multiply i by 20 to get that point
  i = floor(mouseX/20);
  j = floor(mouseY/20);
  
  M0useX = 20*i;
  M0useY = 20*j;
  
  rectMode(CORNER);
  stroke(0);
  fill(0);
  rect(M0useX, M0useY, 20, 20); //Middle
  rect(M0useX - 20, M0useY - 20, 20, 20); //Top Left
  rect(M0useX + 20, M0useY - 20, 20, 20); //Top Right
  rect(M0useX - 20, M0useY + 20, 20, 20); //Bottom Left
  rect(M0useX + 20, M0useY + 20, 20, 20); //Bottom Right
}

void keyPressed(){
  //draws white rectangles over all squares so that it looks like the drawing was erased without erasing the grid
  y=0;
  rectMode(CORNER);
  fill(255);
  while(y<=500){
    for(x = 0; x <= 500; x+= 20){
      rect(x, y, 20,20);
    }
    y+=20;
  }
}

void mouseDragged(){
 mousePressed(); 
}