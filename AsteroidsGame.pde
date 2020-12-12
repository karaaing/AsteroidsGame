Spaceship bob = new Spaceship();
Star[] twinkle = new Star[200];

ArrayList <Asteroid> astArr = new ArrayList <Asteroid>();


// global Variables
boolean spaceShoot = false;
boolean gameOver = false;
int score = 0;

public void setup() 
{
  size(500, 500);
  background(0);
  // stars
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i] = new Star();
  }
  // asteroids
  for(int i = 0; i < 8; i++){
    astArr.add(new Asteroid());
    astArr.get(i).accelerate(2);
  }
}
public void draw() 
{
  background(12, 2, 26);
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i].show();
  }
  bob.show();
  bob.move();
    
  
  // asteroids
    for(int i = 0; i < astArr.size(); i++){
    astArr.get(i).move();
    astArr.get(i).show();
  }
}
public void keyPressed(){
  //rotate right
  if (key == 'd'){
    bob.turn(45);
  }
  //rotate left
  else if (key == 'a'){
    bob.turn(-45);
  }
  //acceleration
  else if (key == 'w'){
    bob.accelerate(0.1);
  }
  //deceleration
  else if (key == 's'){
    bob.accelerate(-0.1);
  }
  //hyperspace
  else if (key == 'e'){
    bob.hyperspace();
  }

}

