import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

import de.voidplus.leapmotion.*;

Minim minim;
LeapMotion leap;

PImage sparkleImg;
Sparkle[] sparkles;
int n = 25;

ArrayList<Hand> hands;

void setup()
{
  fullScreen();
  background(255);
  minim = new Minim(this);

  sparkleImg = loadImage("sparkle.png");
  sparkleImg.resize(n, n);

  leap = new LeapMotion(this);

  sparkles = new Sparkle[50];

  for ( int i = 0; i < 50; i++)
  {
    sparkles[i] = new Sparkle(random(0, width), random(0, height), sparkleImg, true);
  }

  hands = new ArrayList<Hand>();
}


void draw()
{
  background(255);
  hands = leap.getHands();

  if (hands.size() == 2)
  {
    Hand h0 = hands.get(0);
    Hand h1 = hands.get(1);
    
    debug();
    
    PVector h0handPos = h0.getPosition();
    PVector h1handPos = h1.getPosition();

    if (dist(h0handPos.x, h0handPos.y, h1handPos.x, h1handPos.y) < 100)
    {
      for (int i = 0; i < 50; i++)
      {
        sparkles[i].Draw();
        sparkles[i].Sparkling();
      }
    }
  }
}

void debug()
{
  Hand h0 = hands.get(0);
  Hand h1 = hands.get(1);
  
  PVector h0p = h0.getPosition();
  PVector h1p = h1.getPosition();
  
  float d = dist(h0p.x, h0p.y, h1p.x, h1p.y);
  
  textSize(24);
  text("hi" + d, 100, 100);
  println(d);
  line(h0p.x, h0p.y, h1p.x, h1p.y);
}