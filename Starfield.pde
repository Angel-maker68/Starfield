Particle [] rays;
void setup()
{
  frameRate(20);
  background(0);
  size (1000, 1000);
  rays = new Particle[1000];
  for (int i = 0; i < rays.length; i++)
  {
    rays[i] = new Particle();  
  }
  rays[0]= new Block();
}
void draw()
{
  //your code here
  background(0);
  for (int i = 0; i < rays.length; i++)
  {
    rays[i].move();
    rays[i].show();
  }
}
class Particle
{
  double X, Y, speed, angle;
  int myColor;
  Particle()
  {
    X = 500;
    Y = 500;
    speed = Math.random()*7;
    angle = Math.random()*8;
    myColor = color((int)(Math.random()*255)+1, (int)(Math.random()*255)+1, (int)(Math.random()*255)+1);
  }
  void move()
  {
    X = X + (Math.cos(angle)*speed);
    Y = Y + (Math.sin(angle)*speed);
  }
  void show()
  {
    fill(myColor);
    ellipse((float)X, (float)Y, 10, 10);
  }
}

class Block extends Particle //inherits from Particle
{
  Block()
  {
    
  }
  void show()
  {
    fill(255);
    ellipse((float)X, (float)Y, 60, 60);
  }
}
