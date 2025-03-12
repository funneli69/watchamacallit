String[] opps = {"local kid jesse pirated game, older brother eli defends his case","local cat millie accidentally leaked mario kart 9","Charlie leaked release date for Switch 2","El leaked Splatoon 4 development footage","Vivian leaked The Legend of Zelda: A New Adventure plot details","Ben leaked unannounced indie game partnership","Jesse leaked the next mario party game mechanics","Millie leaked details about pokemon legends: Z-A","Deckie leaked concept art for Zelda: A new adventure","Henry leaked upcoming metroid prime 4 footage","Finnan leaked new super smash bros. installment","El leaked Nintendo's next big title","Local kid Jaya leaked new nintendo game","Beth leaked early build of a new Yoshi game"};
int index = int(random(opps.length));
String current = "";
int score = 100000;
String displayedMessage = "";
int nox = 1000;
int noy = 500;
boolean nobutton = false;
PImage meeting;
PFont font;
void setup(){
  size(1750,900);
  meeting = loadImage("getsued.jpg");
  font = createFont("Jersey10-Regular.ttf",50);
}
void draw(){
  image(meeting,0,0,1750,900);
  fill(255,255,255);
  rect(600,500,200,100);
  rect(1000,500,200,100);
  fill(0,0,0);
  text("Yes",670,530,250,250);
  fill(0,0,0,150);
  rect(200,200,1400,150);
  fill(0,0,0);
  text("No",1075,530,250,250);
  textFont(font);
  fill(255,255,255);
  text("Sue?",875,250);
  text("Your Money: " + score,775,750);
  
   text(displayedMessage,400,300);
  }
void mousePressed(){
  if ((mouseX >1000 && mouseX < 1200)){
    int randomIndex = int(random(opps.length));
      displayedMessage = opps[randomIndex];
      fill(0,0,0,150);
      rect(200,200,1400,150);
  }
          
 
  if ((mouseX >600 && mouseX < 800)){
int randomyes = int(random(opps.length));
      displayedMessage = opps[randomyes];
      fill(0,0,0,150);
      rect(200,200,1400,150);
      if (random(1) >0.5){
       score += 10000;
      }
      else {
        score -= 10000;
      }
  }
  
}
