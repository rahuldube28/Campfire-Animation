class Particle
{
  PVector pos;
  PVector dir;
  float speed;
  color colorArray[]= new color [3];
  PVector vel;
  PVector wind;
  float floatup;
  float age;
  boolean isDead;
  color darkRed;
  color yellow;
  color white;
  color c;
  int colorNumber;
  PImage campfire;
  float windStrength;
  int test;
  Particle ()
  {
    imageMode(CENTER);
    pos=new PVector (random(370, 430), 600);
    dir= new PVector(0, -1);
    campfire= loadImage("Screen Shot 2021-02-28 at 15.07.19.png");
    color darkRed=color(177, 64, 33, age);
    color yellow=color(238, 205, 86, age);
    color white=color(249, 235, 171, age);
    colorArray[0]=darkRed;
    colorArray[1]=yellow;
    colorArray[2]=white;
    c = colorArray[(int)random(0, 3)];
    //println(c);
    //println(colors[1]);
    floatup=1;
    //vel=new PVector (0, 0);
    //wind= new PVector(map(mouseX, 0, 800, -0.05, 0.05), 0);
    windStrength=0;
    wind= new PVector(0, 0);
    //println(windStrength);
    age=255;
    test=0;
  }

  void Move()
  {
    dir. normalize();
    dir.mult(floatup);
    dir.add(wind);
    pos.add(dir);
    age=age-2.2;

  }
  void Render()
  {
    noStroke();
    fill(177, 64, 33, age);
    //fill(c);
    rect(pos.x, pos.y, 10, 10);
    image(campfire, 405, 620);
    //println(colors);
  }
  void Update()
  {
    Move();
    Render();
    DeadAlive();
    keyPressed();
  }
  void DeadAlive()
  {
    if (age < 0.0) {
      isDead=true;
    } else {
      isDead=false;
    }
  }
  void keyPressed()
  {
    if (keyCode == RIGHT)
    {
      wind.x=wind.x+0.0003;
    }
    if (keyCode== LEFT)
    {
      wind.x=wind.x-0.0003;
    }
  }
}
