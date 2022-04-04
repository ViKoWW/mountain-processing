float cols;
float rows;
float scl;
int x;
//int xCHUNK;
//int yCHUNK;
//int zCHUNK = 32*scl;
int y;
float w = 3000;
float h = 2000;
color g = 150;
float worldPosX;
float worldPosY;
float worldPosZ1;
float worldPosZ2;
float worldPosZ3;
float worldPosZ4;
int CHUNK_NUMBER;
terrain[][] chunkMAP;
CHUNK[][]world_chunkMAP;
float flying;
PImage water;
CHUNK chunks;
worldGenerator world;
terrain terr;
heightMAP hMAP;
OpenSimplexNoise noise;
float[][] terrain;

void setup() {
 size(600, 600, P3D);
 noise = new OpenSimplexNoise();
  scl = 10;
  flying = 0.1;
  water = loadImage("water.jpg");

  //chunks = new CHUNK();
  world_chunkMAP = new CHUNK[8][8];
  world = new worldGenerator();
  hMAP = new heightMAP();
  cols = w / scl;
  rows = h / scl;
  terrain = new float[hMAP.h_cols+1][hMAP.h_rows+1];
  hMAP.generate_MAP();
  
  
}

void draw() {
  lights();
  
 //flying -= 0.04;
  //float yoff = flying;
  
  //for(y = 0; y < rows; y++) {
  //  float xoff = 0;
  //  for(x = 0; x < cols; x++) {
  //    terrain[x][y] = map(noise(xoff,yoff), 0, 1, -120, 200);
  //    xoff = xoff+0.10;
      
  //  }
  //  yoff = yoff+0.10;
  //}
  fill(100);
  background(  173, 216, 230);
  translate(width/2, height/2-50);
  rotateX(PI/3);
 translate(-500,-h/2+400, -200 );
 
//  for(int zLoop = -10; zLoop < 100; zLoop++) {
 
      
      
      
     world.world_generator();
   

//endShape();

 // }
  for(y = 0; y < rows-1; y++) {
    beginShape(QUADS);
    
    for(x = 0; x < 16*8; x++) {
      
     fill(100);
   
   //noStroke();
     tint(1);
      texture(water);
      textureMode(NORMAL);
     // vertex(x*scl, y*scl, - 10, 0, 0);
    //  vertex(x*scl, (y+1) * scl, - 10, 0, 1);
      
    //  vertex(30, 20);
    //  vertex(85, 20);
//vertex(85, 75);
   //   vertex(30, 75);
      
      //vertex(x*scl, y*scl, -85, 0, 0);
      //vertex((x+1)*scl, y * scl, -85, 1, 0);
      //vertex((x+1)*scl, (y+1)*scl,-85, 1 ,1);
      //vertex(x*scl, (y+1)*scl, -85, 0, 1);
      
      
     
   
}
endShape();
}
}
