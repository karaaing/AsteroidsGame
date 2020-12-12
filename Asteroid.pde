class Asteroid extends Floater{

  private int rotSpeed;

  public Asteroid(){
    // Asteroids Design
      corners = 10;
      xCorners = new int[] {42,52,72,52,60,40,15,28,9,32,42};
      yCorners = new int[] {38,62,68,80,105,87,102,75,58,60,38};

        // Asteroids Variables
      myColor = color(232,186,193);
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = (int)(Math.random()*601);
      myCenterY = (int)(Math.random()*601);
      myPointDirection = (int)(Math.random()*361);

      rotSpeed = 1;
  }

  public void show(){
    turn(rotSpeed);
    super.show();
  }

  public double getCenterX() {return myCenterX;}
    public double getCenterY() {return myCenterY;}
}
