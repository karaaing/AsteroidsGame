Spaceship bob = new Spaceship();
Star[] twinkle = new Star[200];
public void setup() 
{
  size(500, 500);
  background(0);
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i] = new Star();
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
