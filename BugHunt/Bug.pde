class Bug{
  //fields
  float x;
  float y;
  float speed;
  int s = int (random(1, 5));
  color BugColor;
  //fields for bug direction and orientation
  
  //constructor    
  Bug(float x, float y, int s){
    this.x = x;
    this.y = y;
    this.s = s;
    this.BugColor = color(random(0, 256), random(0,256), random(0,256) );
    speed = random(1, 1.5);
    
  }
  
  //methods
  void crawl(){   
    if (s == 1){
     x += speed;
     if (x>515){
      x = -15; 
     }
    }
    else if (s == 2){
     x -= speed;
     if (x<-15){
      x = 515; 
     }
    }
    else if (s == 3){
     y += speed; 
     if (y>515){
      y = -15; 
     }
    }
    else if (s == 4){
      y -= speed;
      if (y<-15){
       y = 515; 
      }
    }
    
  }
  
  void display(){
    //this is the bug model
    fill(BugColor);
    
    if (s == 1 || s == 2){
      line(x - 10, y - 15, x - 10, y + 15);
      line(x, y - 15, x, y + 15);
      line(x + 10, y - 15, x + 10, y + 15);
      ellipse(x, y, 30, 20);
    }
    else if (s == 3 || s == 4){
      line(x - 15, y - 10, x + 15, y - 10);
      line(x -15, y, x + 15, y);
      line(x - 15, y + 10, x + 15, y + 10);
      ellipse(x, y, 20, 30);
    }

  }
  
  void squash(){
    s = 0;
    
  }
  
  void runAway(){
    speed *= 1.5;
    
  }
  
  boolean mouseOn(){
    if(dist(mouseX, mouseY, x, y) <15 && s != 0 ){
      return true;
    }
    return false;
    
  }
  
  boolean scared(){
    //ellipse(xpos, ypos, 30, 30); //border of the scared and squash areas of the Bug
    if (dist(mouseX, mouseY, x, y) < 30 && s != 0 ){
     return true; 
    }
    return false;
  }
  
}