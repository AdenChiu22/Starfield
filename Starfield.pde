Particle [] bob;
void setup()
{
  size (500,500);
  bob = new Particle [200];
  for (int i = 10; i < bob.length; i++)
    bob[i] = new Particle();
  for (int i = 0; i < 20; i++)
    bob[i] = new OddballParticle();
  
  
  
}

void draw()
{
  
 background(0);

 
  for (int i = 0; i < bob.length; i++)
  {
  
  bob[i].move();
  bob[i].show();
 
  
  }
}

class Particle
{
  double myX, myY, mySpeed, aden;
  int mySize, myAngle;
  Particle ()
  {
   myX = 250;
   myY = 250;
   mySize = (int) (Math.random()*10)+4;
   mySpeed = (int)(Math.random()*3)+1;
   myAngle = (int)(Math.random()*30) * (int)(Math.PI); 
   aden = Math.random()*1; 
   
  }

void move ()
{
 myX+= Math.cos(myAngle) * mySpeed;
 myY+= Math.sin(myAngle) * mySpeed;
 if (myX > 500 || myY > 500 || myY < 0 || myX < 0)
   {
     myX = 250;
     myY = 250;
     mySpeed = (int)(Math.random()*2)+1 ;
   }
  
}

void show ()
{
  
  noStroke();
  if (aden > 0.5)
  fill (210, 175, 255); 
  else
  fill (230,215,255);
  ellipse ((float)myX,(float)myY,mySize,mySize);
}

}

class OddballParticle extends Particle
{
  OddballParticle () 
  {
  myX = 250;
  myY = 250;
  mySize = (int) (Math.random()*10)+25;
  mySpeed = (int)(Math.random()*1)+1;
  myAngle = (int)(Math.random()*30) * (int)(Math.PI);
  aden = Math.random()*1;
}

}
