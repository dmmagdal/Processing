//dmmagdal
//cmps 5J
//pa8

//Variable declaration
int s = 0; //variable for the states
int a; //synonymous with s but used to bring back into s when loop is stopped

int x = 0; //x label for the value in the array of a vertex
int y = 1; //y label for the value in the array of a vertex 

int ax, ay, bx, by, cx, cy;


void setup(){
  size(400, 400);
  background(0, 255, 0);
  smooth();
  
  s = a = 0;
  
  ax = ay = bx = 0;
  by = cx = cy = 400;

}
  
void draw(){
  background(0, 255, 0);
  DrawTriangle();
  MoveTriangle();
 
  
}

void DrawTriangle(){
  //Values for each Vertex in an array
  int[] AVertex = new int[2];
  AVertex[x] = ax;
  AVertex[y] = ay;
  int[] BVertex = new int[2];
  BVertex[x] = bx;
  BVertex[y] = by;
  int[] CVertex = new int[2];
  CVertex[x] = cx;
  CVertex[y] = cy;
  
  //Uses a 2d array to store the previous arrays 
  int[][] Vertice = new int[3][2];
  Vertice[0] = AVertex;
  Vertice[1] = BVertex;
  Vertice[2] = CVertex;
  
  fill(255, 0, 255);
  noStroke();
  triangle( Vertice[0][x], Vertice[0][y], Vertice[1][x], Vertice[1][y], Vertice[2][x], Vertice[2][y]);
}

void MoveTriangle(){
  if (s == 0){ //state 0
   ax += 3;
   if (ax >= 400){
    ax = 400;
    s = a = 1;
   }
  }
  if (s == 1){ //state 1
   by -= 3;
   if (by <= 0){
    by = 0;
    s = a = 2;
   }
  }
  if (s == 2){ //state 2
   cx -= 3;
   if (cx <= 0){
    cx = 0;
    s = a = 3;
   }
  }
  if (s == 3){ //state 3
   ay += 3;
   if (ay >= 400){
    ay = 400;
    s = a = 4;
   }
  }
  if (s == 4){ //state 4
   bx += 3;
   if (bx >= 400){
    bx = 400;
    s = a = 5;
   }
  }
  if (s == 5){ //state 5
   cy -= 3;
   if (cy <= 0){
    cy = 0; 
    s = a = 6;
   }
  }
  if (s == 6){ //state 6
   ax -= 3;
   if (ax <= 0){
    ax = 0;
    s = a = 7;
   }
  }
  if (s == 7){ //state 7
   by += 3;
   if (by >= 400){
    by = 400; 
    s = a = 8;
   }
  }
  if (s == 8){ //state 8
   cx += 3;
   if (cx >= 400){
    cx = 400;
    s = a = 9;
   }
  }
  if (s == 9){ //state 9
   ay -= 3;
   if (ay <= 0){
    ay = 0; 
    s = a = 10;
   }
  }
  if (s == 10){ //state 10
   bx -= 3;
   if (bx <= 0){
    bx = 0;
    s = a = 11;
   }
  }
  if (s == 11){ //state 11
   cy += 3;
   if (cy >= 400){
    cy = 400;
    s = a = 0;
   }
  }
    
  
  
}

void mousePressed(){
  if (s != 13){
    s = 13;
  }
  else{
   s = a; 
  }
  
}