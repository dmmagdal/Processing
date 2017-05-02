//dmmagdal
//cmps 5J
//pa8

//Variable declaration
int x = 0; //x label for the value in the array of a vertex
int y = 1; //y label for the value in the array of a vertex
int k; //Actual value for x
int l; //Actual value for y

void setup(){
  size(400, 400);
  background(0, 255, 0);
  smooth();
  loop();
}
  
void draw(){
  //Array setup
  
  //Values for each Vertex in an array
  int[] AVertex = new int[2];
  AVertex[x] = k = 0;
  AVertex[y] = l = 0;
  int[] BVertex = new int[2];
  BVertex[x] = k = 0;
  BVertex[y] = l = 400;
  int[] CVertex = new int[2];
  CVertex[x] = k = 400;
  CVertex[y] = l = 400;
  
  //Uses a 2d array to store the previous arrays 
  int[][] Vertice = new int[3][2];
  Vertice[0] = AVertex;
  Vertice[1] = BVertex;
  Vertice[2] = CVertex;
  
  //Array holds the value for the direction 
  int[] MoveState = new int[4];
  MoveState[0] = 1; //Right
  MoveState[1] = 2; //Up
  MoveState[2] = 3; //Left
  MoveState[3] = 4; //Down
  
  //Triangle movement
  
    //these items, both Vertices and MoveState need to run parallel.
    //the current set up allows for the Movestate commands to be executed with each Vertex. hence the opertations are performed in series
    //maybe use the && operators in one for loop, maybe use an array, maybe use a method
    //also figure out how to have the events loop infinitely
    for (int i = 0; i < 3; i++){
   
     for (int j  = 0; j < 4; j++){
       if (MoveState[j]%2 != 0 ){ //Right/Left 
     
         if (MoveState[j] == 1){ //Right
           while (k <= 400){
            Vertice[i][x] = k +=3; 
           }
         }
         if (MoveState[j] == 3){ //Left
           while (k >= 0){
            Vertice[i][x] = k -=3; 
           }
         }
       
       }
     
       else if (MoveState[j]%2 == 0){ //Up/Down
       
         if (MoveState[j]/2 == 1){ //Up
           while (l >= 0){
            Vertice[i][y] = l -=3; 
           }
         }
         if (MoveState[j]/2 ==2){ //Down
           while (l <= 0){
            Vertice[i][y] = l +=3; 
           }
         }
       
       }
       
     }
     
    }
  
  
  //Drawing the triangle
  fill(255, 0, 255);
  noStroke();
  triangle( Vertice[0][x], Vertice[0][y], Vertice[1][x], Vertice[1][y], Vertice[2][x], Vertice[2][y]);
  
}

void mousePressed(){
  //look into the loop() and noloop() functions and maybe use 
  //variables for states on/off
  
}