class CHUNK {

   int chunk_cols;
  int chunk_rows; 
  int chunk_layers;
  int xCHUNK;
  int yCHUNK;
  float checkSlope1;
  float checkSlope2;
  float checkSlope3;
  float checkSlope4;
  
CHUNK(int tempCHUNK_NUMBER_X, int tempCHUNK_NUMBER_Y) {
   world.world_chunksX = tempCHUNK_NUMBER_X;
   world.world_chunksY = tempCHUNK_NUMBER_Y;
   xCHUNK =  16* (int) scl;
   yCHUNK =  16* (int) scl;
  // zCHUNK = 32*scl;
   chunk_cols = xCHUNK/ (int) scl;
   chunk_rows = yCHUNK/ (int) scl;
  // chunk_layers = zCHUNK/scl;
    chunkMAP = new terrain[16][16];
  //HEIGHT.get_MAP();
  
  }

 
 void generator() {
  
   for(int yLoop = 0; yLoop < chunk_rows; yLoop++) {
    //beginShape(TRIANGLE_STRIP);
    
    for(int xLoop = 0; xLoop < chunk_cols-1; xLoop++) {
      
 
   
     worldPosX = xLoop*scl;
     worldPosY = yLoop*scl;
     worldPosZ1 = terrain[xLoop+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)];
     worldPosZ2 = terrain[xLoop+(15*world.world_chunksX)][yLoop+1+(15*world.world_chunksY)];
     worldPosZ3 = terrain[xLoop+1+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)];
     worldPosZ4 = terrain[xLoop+1+(15*world.world_chunksX)][yLoop+1+(15*world.world_chunksY)];

     
     checkSlope1 =  terrain[xLoop+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)];
     checkSlope2 = terrain[xLoop+1+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)];
     checkSlope3 = terrain[xLoop+(15*world.world_chunksX)][yLoop+1+(15*world.world_chunksY)];
     checkSlope4 = terrain[xLoop+1+(15*world.world_chunksX)][yLoop+1+(15*world.world_chunksY)];
//   vertex(worldPosX, worldPosY, worldPosZ1);
//   vertex(worldPosX, worldPosY + scl, worldPosZ2);
     
     // vertex(x*scl, y*scl, terrain[x][y]);
   //   vertex(x*scl, (y+1) * scl, terrain[x][y+1]);
 //  if(terrain[xLoop+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)] >= -10 && terrain[xLoop+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)]<= 15) {
  //   fill(121, 96, 76);
  // }
  // else if((terrain[xLoop+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)] >= 15 && terrain[xLoop+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)]<= 25)) {
  //   fill(26, 102, 46);
 //  }
 
 //   if(abs( checkSlope1 -  checkSlope2) > scl*sqrt(3)
 //  || abs( checkSlope1 -  checkSlope3) > scl *sqrt(3)
 //  || abs( checkSlope1 -  checkSlope4) > scl *sqrt(3)
 //  ) 
 //  { fill(192, 192, 192);
   
 //  }
   if(abs( checkSlope1 -  checkSlope2) > scl 
   || abs( checkSlope1 -  checkSlope3) > scl 
   || abs( checkSlope1 -  checkSlope4) > scl 
   ) 
   { fill(114, 73,32);
   
   }
  
   else {
    fill(13, 89, 1); 
   }
   
  // fill((map(terrain[xLoop+(15*world.world_chunksX)][yLoop+(15*world.world_chunksY)], -100, 150, 100, 255)));
  
   terr = new terrain(worldPosX, worldPosY, worldPosZ1, worldPosZ2, worldPosZ3, worldPosZ4);
   terr.create();
   
  
  
}
}
 }
}
