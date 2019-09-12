//BugHunt
//CMPS 5J
//pa7

int n = 30;             // number of Bugs
Bug[] B = new Bug[n];   // bug array
int ClickCount = 0;
int DeadCount = 0;
float KillRate;

void setup(){
 size(500, 500);
 smooth();
 for(int i=0; i<n; i++){
   B[i] = new Bug(random(20,480),random(20,480),(int)random(1,5));
 }
}

void draw(){
 background(170);
 for(int i=0; i<n; i++){
    B[i].display();
    B[i].crawl();
 }
}

void mousePressed(){
 ClickCount++;
 for(int i=0; i<n; i++){
  if(B[i].mouseOn()){
   B[i].squash();
   DeadCount++;
  }
  else if(B[i].scared()){
   B[i].runAway(); 
  }
 }
 KillRate = float(DeadCount)/(ClickCount);
 println("kill rate = " +KillRate+ " bugs per click");
}