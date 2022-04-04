class terrain {
 terrain(float tempworldPosX, float tempworldPosY,float tempworldPosZ1, float tempworldPosZ2, float tempworldPosZ3, float tempworldPosZ4) {
    worldPosX = tempworldPosX;
    worldPosY = tempworldPosY;
    worldPosZ1 = tempworldPosZ1;
    worldPosZ2 = tempworldPosZ2;
    worldPosZ3 = tempworldPosZ3;
    worldPosZ4 = tempworldPosZ4;
 }
 
 void create() {
 
   pushMatrix();
  //noStroke();
   beginShape(TRIANGLE_STRIP);
     vertex(worldPosX, worldPosY, worldPosZ1);
     vertex(worldPosX, worldPosY + scl, worldPosZ2);
     vertex(worldPosX+scl, worldPosY , worldPosZ3);
     vertex(worldPosX+scl, worldPosY+scl, worldPosZ4);
  endShape();
  popMatrix();
 
 }
}
