// Eli //
//Assignment 1 //
void setup(){
  size(400,600);
  background(255,0,0);
  x = width/2;
  y = width/2;
}
float x, y;
void draw(){
  ellipse(x,y,50,50);
}

void mousePressed(){
  x = mouseX;
  y = mouseY;
}
