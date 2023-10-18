Kitty bob;
Kitty[] litter;
void setup()
{
  size(500, 500);
  background(60, 150, 63);
  bob = new Kitty();
  litter = new Kitty[120];
  for (int i = 0; i<litter.length; i++)
  {
    litter[i]= new Kitty();
  }
}
void draw()
{
  background(60, 150, 63);
  bob.show();
  bob.walk();
  for (int i = 0; i<litter.length; i++)
  {
    litter[i].walk();
    litter[i].show();
  }
  fill(255, 0, 0);
  ellipse(mouseX, mouseY, 10, 10);
}
class Kitty {

  int myX, myY, rgb1, rgb2, rgb3;
  Kitty()
  {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    rgb1 = (int)(Math.random()*60+60);
    rgb2 = (int)(Math.random()*40+40);
    rgb3 = (int)(Math.random()*10+10);
  }
  void walk()
  {
    //myX+= (int)(Math.random()*6-3);
    //myY+= (int)(Math.random()*6-3);
    if (mouseX>myX&&mouseY>myY)
    {
      myX+=(int)(Math.random()*8-3);
      myY+=(int)(Math.random()*8-3);
    } else if (mouseX<myX&&mouseY<myY)
    {
      myX+=(int)(Math.random()*8-6);
      myY+=(int)(Math.random()*8-6);
    } else if (mouseX<myX&&mouseY>myY)
    {
      myX+=(int)(Math.random()*8-6);
      myY+=(int)(Math.random()*8-3);
    } else if (mouseX>myX&&mouseY<myY)
    {
      myX+=(int)(Math.random()*8-3);
      myY+=(int)(Math.random()*8-6);
    } else if (mouseX==myX&&mouseY<myY)
      myY+=(int)(Math.random()*8-7);
    else if (mouseX==myX&&mouseY>myY)
      myY+=(int)(Math.random()*8-2);
    else if (mouseY==myY&&mouseX<myX)
      myX+=(int)(Math.random()*8-7);
    else if (mouseY==myY&&mouseX>myX)
      myX+=(int)(Math.random()*8-2);
    if (myX>500 || myX < 0|| myY>500 || myY<0)
    {
      myX=myY=250;
    }
  }
  void show()
  {
    fill(rgb1, rgb2, rgb3);
    ellipse(myX, myY, 20, 10);
    ellipse(myX-5, myY+5, 5, 10);
    ellipse(myX+5, myY+5, 5, 10);
    ellipse(myX+10, myY-5, 10, 10);
    triangle(myX+6, myY-9, myX+8, myY-14, myX+10, myY-11);
    triangle(myX+11, myY-11, myX+13, myY-14, myX+15, myY-9);
  }
}
