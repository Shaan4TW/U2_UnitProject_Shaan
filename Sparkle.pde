class Sparkle
{
private float _x;
private float _y;
private PImage _img;
private Boolean _isSparkling;
  

Sparkle(float x, float y, PImage img, boolean isSparkling)
{
  _x = x;
  _y = y;
  _img = img;
  _isSparkling = isSparkling;
}
  
private void Shrink()
{
  //sparkleImg.resize(5,5);
}

public void Sparkling()
{
  if (_isSparkling)
  {
    Shrink();
  }
}

public void Draw()
{
  if (_isSparkling)
  {
    image(_img, _x, _y);
  }
}
  
  
  
  
  
  
  
  
  
  
  
  
  
}