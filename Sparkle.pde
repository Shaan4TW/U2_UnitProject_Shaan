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

  public void Move()
  {
    _y = _y - random(0, 10);
    _x = _x - random(0, 10);

  }

  public void Sparkling()
  {
    if (_isSparkling)
    {
      Move();
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