import shapes3d.utils.*;
import shapes3d.animation.*;
import shapes3d.*;

Tierra shr;

void setup(){
  
  size(700,700,P3D);
  shr= new Tierra();
}
void draw(){
    
  shr.draw(200);
}