class worldGenerator {
    int world_chunksX;
  int world_chunksY;
 worldGenerator() {
   
   CHUNK_NUMBER = 8;
 }
  void world_generator() {
   
    for(world_chunksY = 0; world_chunksY < CHUNK_NUMBER; world_chunksY++){
    // CHUNK_NUMBER_Y++;
      
     // translate(0, 640);
      for(world_chunksX = 0; world_chunksX < CHUNK_NUMBER; world_chunksX++){
       
       
        // c = new CHUNK();
        pushMatrix();
        
        translate(world_chunksX*15*scl,world_chunksY*scl*15);
        //c.generator();
        
        world_chunkMAP[world_chunksX][world_chunksY] = new CHUNK(world_chunksX, world_chunksY);
       // world_chunk_MAP[world_chunksX][world_chunksY].generator();
        world_chunkMAP[world_chunksX][world_chunksY].generator();
       //print(terrain[xLoop][yLoop]);
        
        popMatrix();
       // CHUNK_NUMBER_X++;
       
      }
    }
  }
  
  
  
}
