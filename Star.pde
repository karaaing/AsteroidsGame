class Star
{
  private int myX, myY, myColor, mySize;
  public Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myColor = color(255,244,199);
    mySize = (int)(Math.random()*10);
  }
  public void show(){
    fill(255,244,199);
    ellipse(myX, myY, mySize, mySize);
  }
}
