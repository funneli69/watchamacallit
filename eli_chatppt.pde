//eli//
//pokemon card//
PImage ima;
PImage image;
PImage img;
String name;
String attack;
String attack2;
String attack3;
String attacks;
void setup(){
  size(500,500);
  background(255,0,0);
  ima=loadImage("verysigma.jpg");
  image=loadImage("verycool.jpg");
  img=loadImage("imaging.png");
  name = "chatgpt";
  attack = "artificial intelligence:69";
  attack2 = "ai takeover:21";
  attack3 = "lets move on to a new topic:420-ONE TIME USE";
  attacks = "ATTACKS";
}
void draw(){
  fill(173,216,230);
  image(image,100,50,300,400);
  image(img,200,100,100,100);
  fill(77,77,255);
  textSize(28);
  text(attacks,210,225);
  text(name,210,75);
  text(attack,125,250);
  text(attack2,125,300);
  fill(255,0,0);
  textSize(15);
  text(attack3,106,350);
  image(ima,100,00,50,50);
}
