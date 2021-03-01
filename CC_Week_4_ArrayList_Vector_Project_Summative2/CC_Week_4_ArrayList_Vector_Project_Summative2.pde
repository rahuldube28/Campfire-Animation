Particle p;
PImage background;
ArrayList<Particle> generator = new ArrayList<Particle>();
void setup()
{
  size (800, 800);
  p=new Particle();
  for (int i=0; i < 50; i++)
  {
    generator.add(new Particle());
  }
}

void draw()
{
  background(0);
  background= loadImage("minecraft background.jpg");
  image(background, 400, 400);

  for (Particle p : generator)
  {
    p.Update();
  }
  if (p.getisDead());
  {
    generator.add(new Particle());
  }
}
