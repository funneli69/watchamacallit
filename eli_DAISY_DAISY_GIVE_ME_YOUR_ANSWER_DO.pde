int maxf = 29283;
int currentf = 0;
float[] x = new float[maxf];
float[] y = new float[maxf];
float[] angle = new float[maxf];
float[] sway = new float[maxf];
String[] flowers = {"daisy","tulip","weird cube thing"};
String[] flower = new String[maxf];
void setup(){
  size(1000,600);
}
void drawground(){
  fill(115,203,109);
  rect(-10,500,width+50,100);
}
void draw(){
  background(167,247,255);
  drawground();
  for(int i=0; i<currentf; i++){
    angle[i] += sway[i];
    pushMatrix();
    translate(x[i],y[i]);
    rotate(sin(angle[i]*0.1));
    drawflower(flower[i]);
    popMatrix();
  }
}
void drawflower(String type){
  stroke(0,100,0);
  strokeWeight(3);
  line(0,0,0,30);
  noStroke();
  if(type.equals("tulip")){
    fill(255,100,100);
    triangle(-10,0,0,-20,10,0);
    ellipse(0,-10,20,15);
  } else if(type.equals("daisy")){
    fill(255);
    for(int i=0; i<8;i++){
      float petal = TWO_PI/8*i;
      float px = cos(petal)*10;
      float py = sin(petal)*10-10;
      ellipse (px,py,10,15);
    } 
    fill(255,200,0);
    ellipse(0,-10,10,10);
  } else if(type.equals("weird cube thing")){
       fill(255);
   ellipse(mouseX,mouseY,50,50);
    }
}
void mousePressed(){
  if(currentf<maxf){
    x[currentf] = mouseX;
    y[currentf] = mouseY;
    angle[currentf] = random(TWO_PI);
    sway[currentf]=random(0.01,0.03);
     flower[currentf]=flowers[(int)random(flowers.length)];
    currentf++;
  }
}
