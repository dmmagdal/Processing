//dmmagdal
//cmps 5J
//pa5

int LineX = 0;
int LineY = 0;

int M0useX;
int M0useY;

int IncrementA = 0; //Increment for X
int IncrementB = 0; // Increment for Y

int i, j; //X and Y increment2 Respectively

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

//Here's the plan on the mouse click
//Option 1
//Set variables to act as a square's Center X and H
//Those variables will be reached by mouse coords plus an increment/decrement value
//The X and Y must be %20 != 0 and %10 = 0 

void mousePressed(){
  
  //if mouseX + Increment%20 && mouseX + Increment%10 !=0 && increment<10
  //Increment++
  //if mouseX + Increment%20 && mouseX + Increment%10 !=0 && increment>-10
  //increment--
  
  
  while((mouseX + IncrementA)%20 != 0 && IncrementA%10 != 0 && IncrementA<10){
    IncrementA += 1;
  }
  while((mouseX + IncrementA)%20 != 0 && IncrementA%10 != 0 && IncrementA>-10){
    IncrementA -= 1;
  }
  while((mouseY + IncrementB)%20 != 0 && IncrementB%10 != 0 && IncrementB<10){
    IncrementB += 1;
  }
  while((mouseY + IncrementB)%20 != 0 && IncrementB%10 != 0 && IncrementB>-10){
    IncrementB -= 1;
  }
  
  M0useX = mouseX + IncrementA;
  M0useY = mouseY + IncrementB;
  
  if(mouseX%20 != 0 && mouseY%20 != 0){
    rectMode(CENTER);
    stroke(0);
    fill(0);
    rect(M0useX, M0useY, 20, 20); //Middle
    rect(M0useX - 20, M0useY - 20, 20, 20); //Top Left
    rect(M0useX + 20, M0useY - 20, 20, 20); //Top Right
    rect(M0useX - 20, M0useY + 20, 20, 20); //Bottom Left
    rect(M0useX + 20, M0useY + 20, 20, 20); //Bottom Right
  }
}

void mouseDragged(){
  
}

void keyPressed(){
  background(255);
  stroke(0);
  while(LineX != 500){
    line(LineX, 0, LineX, 500);
    LineX += 20;
  }
  while(LineY != 500){
    line(0, LineY, 500, LineY);
    LineY += 20;
  }
}