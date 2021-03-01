Particle p;
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
  for (Particle p : generator)
  {
    p.Update();
  }
  if (p.isDead);
  {
    generator.add(new Particle());
  }
}
void keyPressed()
{
  if (key == 'w')
  {
    p.windStrength=15;
  }
  if (key=='d')
  {
    p.windStrength=p.windStrength-1;
  }
}
