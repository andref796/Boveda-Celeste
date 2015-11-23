

class Tierra {

float radio = 200;
float rx = 100;
float ry =170;//rotacion
float rxp=0;
float ryp=0;//velocidad con la que gira

void draw(int r) {
  background(0);
  rx += rxp;
  ry += ryp;
  rxp *=0.95;
  ryp *=0.95;
  if(mousePressed){
    rxp +=(mouseY-pmouseY) * 0.01;
    ryp +=(mouseY-pmouseY) * 0.01;
  }
  translate(width/2, height/2);
  rotateY(radians(-rx));
  rotateX(radians(270-ry)); 
  sphere(r);
  
}
}