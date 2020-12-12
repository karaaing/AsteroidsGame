class Bullet extends Floater{

  public Bullet(){
    myCenterX = bob.getCenterX();
    myCenterY = bob.getCenterY();
    myPointDirection = bob.getPointDirection();
    myXspeed = 5*Math.cos(bob.getPointDirection()*(Math.PI/180)) + bob.getXspeed();
    myYspeed = 5*Math.sin(bob.getPointDirection()*(Math.PI/180)) + bob.getYspeed();
  }
  
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;  
  }

  public void show(){
    fill(#beff7d);
    ellipse((float)myCenterX, (float)myCenterY, 5, 5);
  }
  public double getPointDirection() {return myPointDirection;}
  public double getCenterX() {return myCenterX;}
  public double getCenterY() {return myCenterY;}
}
