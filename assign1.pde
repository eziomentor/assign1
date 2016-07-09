/* please implement your assign1 code in this file. */
PImage fighterImg;
PImage bg1Img;
PImage bg2Img;
PImage enemy;
PImage treasure;
PImage hp;

int x;
int r;//treasure x line
int q;//treasure y line
int w;
int b;//bg1
int c;//bg2

void setup () {
  size(640,480) ;  // must use this size.
  // your code
  fighterImg = loadImage("img/fighter.png");
  bg1Img = loadImage("img/bg1.png");
  bg2Img = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  treasure = loadImage("img/treasure.png");
  hp = loadImage("img/hp.png");
 
  b = 640;
  stroke(300);
  fill(225,0,0);
  w = floor(random(201));
  r = floor(random(640));
  q = floor(random(480));
  c = 0;
}

void draw() {
  // your code
  background(0);
  image(bg1Img,b-640,0);
  image(bg2Img,c-640,0);
  image(fighterImg,589,215);
  image(enemy,x,350);
  image(treasure,r,q);
  
  rect(10,7,w,20);//HP line
  image(hp,5,5);
  
  x +=3;
  x %=640;
  
  c +=2;
  c %= 1280;
  
  b +=2;
  b =b % 1280;
  
}
