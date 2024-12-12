PFont noto;
int moai=0;
int money=0;
int nerd=0;
void setup(){
  size(800,400);
  noto = createFont("Noto Sans",50);
}
void draw(){
  String winner = "";
  if (moai>money&&moai>nerd){
    winner = "moai";
    fill(255,0,0);
  }else if (money>moai&&money>nerd){
    winner = "money";
    fill(0,255,0);
  }else if (nerd>money&&nerd>moai){
    winner = "nerd";
    fill(0,0,255);
  }else {
   fill(0);
   }
  background(140,224,227);
  textSize(32);
  text("Votes: "+ moai, 60,280);
  text("Votes: "+money, 330, 280);
  text("Votes: "+nerd, 600, 280);
  textSize(64);
  textFont(noto);
  text("🗿",100,200);
  text("🤑",360,200);
  text("🤓",630,200); 
}
void keyPressed(){
  if (key =='1'){
    moai++;
  }else if(key == '2'){
    money++;
  }else if(key == '3'){
    nerd++;
  }
}
