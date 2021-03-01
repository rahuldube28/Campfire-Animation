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
    pos=new PVector (random(375, 430), 600);
    dir= new PVector(0, -1);
    campfire= loadImage("Screen Shot 2021-02-28 at 15.07.19.png");
    age=255;
    colorArray[0]=color(196, 80, 8, age);
    colorArray[1]=color(238, 205, 86, age);
    colorArray[2]=color(249, 235, 171, age);
    c = colorArray[(int)random(0, 3)];
    floatup=1;
    windStrength=0;
    wind= new PVector(0, 0);

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
    fill(c,age);
    rect(pos.x, pos.y, 10, 10);
    image(campfire, 405, 620);
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
      wind.x=wind.x+0.0001;
    }
    if (keyCode== LEFT)
    {
      wind.x=wind.x-0.0001;
    }
  }
  boolean getisDead()
  {
    return isDead;
  }
}
