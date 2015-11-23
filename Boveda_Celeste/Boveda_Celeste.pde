import shapes3d.utils.*;
import shapes3d.animation.*;
import shapes3d.*;

Ellipsoid earth, moon, stars, mars, neptune;
Box orbiter, orbiter_2;

boolean attached = true;
int p=1;

void setup() {
  size(420, 380, P3D);  

  // Crear planeta tierra
  earth = new Ellipsoid(this, 36, 16);
  earth.setTexture("earth.jpg"); //
  earth.setRadius(90);
  earth.tag = "Earth";
  earth.drawMode(Shape3D.TEXTURE);

  //    // Create the moon
  moon = new Ellipsoid(this, 15, 15);
  moon.setTexture("moon.jpg");
  moon.drawMode(Shape3D.TEXTURE);
  moon.setRadius(20);
  moon.moveTo(0, 0, 220);
  moon.tag = "Moon";
  
  //    // Create the moon
  neptune = new Ellipsoid(this, 15, 15);
  neptune.setTexture("neptune.jpg");
  neptune.drawMode(Shape3D.TEXTURE);
  neptune.setRadius(20);
  neptune.moveTo(180,-60, 220);
  neptune.tag = "Neptune";
  
  //    // Create the mars
  mars = new Ellipsoid(this, 15, 15);
  mars.setTexture("mars.jpg");
  mars.drawMode(Shape3D.TEXTURE);
  mars.setRadius(20);
  mars.moveTo(0, 360, 220);
  mars.tag = "Mars";

  
  // Create the star background
  stars = new Ellipsoid(this, 10, 10);
  stars.setTexture("stars01.jpg", 5, 5);
  stars.drawMode(Shape3D.TEXTURE);
  stars.setRadius(1000);

  // Add the moon to the earth this makes 
  // its position relative to the earth's
  earth.addShape(moon);
  earth.addShape(mars);
  earth.addShape(neptune);
  
  // and the orbiter to the moon
  
}
int x=100;
int y=100;
int z=100;
public void draw() {
  pushStyle();
  // Change the rotations before drawing
  
  if(p==1){
  
  earth.rotateBy(0, radians(0.6f), 0);
  moon.rotateBy(radians(0.5f), radians(1.0f), 0);
  
  stars.rotateBy(0, 0, radians(0.02f));
  mars.rotateBy(radians(0.5f), radians(1.0f), 0);
  neptune.rotateBy(radians(0.5f), radians(1.0f), 0);
  point(x++,y++,z++);
  
  }
  
  background(0);
  pushMatrix();
  camera(0, -190, 350, 0, 0, 0, 0, 1, 0);

  // Draw the earth (will cause all added shapes
  // to be drawn i.e. the moon)
  earth.draw();

  stars.draw();
  popMatrix();
  popStyle();
}
void keyPressed(){
  if(key==CODED && (keyCode==UP)){
    p=0;
    }
    else{
    p=1;
    }  
    
}