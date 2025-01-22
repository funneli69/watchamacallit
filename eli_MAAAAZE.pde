PImage image;
PImage goal;
int goalX = 3;
int goalY = 3;
int playerX = 0;
int playerY = 0;
boolean end = false;

void setup (){
  image = loadImage("temmie.png");
  goal = loadImage("tem.png");
  textSize(32);
  size(400,400);
}
void draw(){
  background(112, 218, 230);
  for(int i=0; i<5; i++){
    for(int j=0; j<5; j++){
      stroke(0);
      fill(112, 218, 230);
      rect(i*80, j*80, 80,80);
    }
  }
    image(image, playerX, playerY);
    image.resize(80,80);
    
    image(goal, goalX * 80, goalY * 80,80 ,80 );
    image.resize(80,80);
    
    if (end){
      fill(255,0,0);
       text("You Won!" ,width/2 -60 ,height/2);
      noLoop();
    }
}
void keyPressed (){
if ((keyCode == UP || key == 'w') && playerY>0){
  playerY-=80;
}else if ((keyCode == DOWN || key == 's') && playerY<320){
  playerY+=80;
}else if ((keyCode == LEFT || key == 'a') && playerX>0){
  playerX-=80;
}else if ((keyCode == RIGHT || key == 'd') && playerX<320){
  playerX+=80;
}

if (playerX == 240 && playerY == 240){
  end = true;
}
}
