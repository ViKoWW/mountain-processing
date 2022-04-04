class heightMAP {
  int h_cols;
  int h_rows;
  int yLoop_HEIGHT;
  int xLoop_HEIGHT;
  float tempnoise; 
  float adjustedtempnoise;
  float valleynoise; 
 heightMAP() {
   h_cols = 16*CHUNK_NUMBER;
   h_rows = 16*CHUNK_NUMBER;
  
   
 }
 
 float getNoise(float xpos_off, float ypos_off){
   return (float) noise.eval(xpos_off, ypos_off) / 2 + 0.5; 
 }
   
  void generate_MAP() {
   // float xpos_off = 0.1;
   // float ypos_off = 0.1;
   float xpos_off = 0;
     
   // getNoise(xpos_off, ypos_off); 
  //flying -= 0.02;
  //ypos_off = flying;
   // float ypos_off_noise = flying;
    for(yLoop_HEIGHT = 0; yLoop_HEIGHT < this.h_rows; yLoop_HEIGHT++) {
     
     float ypos_off = 0;
      xpos_off = xpos_off+0.05;
      for(xLoop_HEIGHT = 0; xLoop_HEIGHT < this.h_cols; xLoop_HEIGHT++) {
       // xpos_off = xLoop_HEIGHT/cols - 0.5;
        //ypos_off = yLoop_HEIGHT/rows - 0.5;
        
     
         tempnoise = getNoise(xpos_off, ypos_off) 
         + 0.5 * (getNoise(xpos_off * 2, ypos_off*2 )) 
         + (0.25 * (getNoise(xpos_off* 4, ypos_off * 4)))
         + (0.125 * (getNoise(xpos_off * 8, ypos_off * 8)))
         + (0.0625 * (getNoise(xpos_off * 16, ypos_off * 16)))
         + (0.03125 * (getNoise(xpos_off * 32, ypos_off * 32)));
        
          
       // valleynoise = pow(tempnoise, 1.5);
       terrain[xLoop_HEIGHT][yLoop_HEIGHT] = map(tempnoise, 0 , 1.5, -50, 150);
              //xpos_off = map(noise(xpos_off_noise, ypos_off_noise), 0, 1, 0, 0.10 );
             // ypos_off = map(noise(xpos_off_noise, ypos_off_noise), 0, 1, 0, 0.10 );
              // print("HELLO");
               //print(terrain[xLoop_HEIGHT][yLoop_HEIGHT]);
            //   xpos_off_noise = xpos_off_noise + 0.05;
            ypos_off = ypos_off+0.05;
         print(tempnoise + " ");
      }
      
     
  //    ypos_off_noise = ypos_off_noise+0.05;
    }
  }
  
}
