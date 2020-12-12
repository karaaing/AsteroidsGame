Spaceship bob = new Spaceship();
Star[] twinkle = new Star[200];

ArrayList <Asteroid> astArr = new ArrayList <Asteroid>();
ArrayList <Bullet> pewPew = new ArrayList <Bullet>();


// global Variables
boolean aTurn = false;
boolean dTurn = false;
boolean wMove = false;
boolean spaceShoot = false;
boolean gameOver = false;
int score = 0;

public void setup() 
{
  size(600, 600);
  background(0);
  
// stars
  for (int i = 0; i < twinkle.length; i++){
    twinkle[i] = new Star();
  }

// asteroids
  for(int i = 0; i < 10; i++){
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
  
// spaceship
  bob.show();
  bob.move();

  // Space Ship
  bob.move();
  bob.show();

  // Move SpaceShip
  if(aTurn == true){
    bob.turn(-3);
  }
  if(dTurn == true){
    bob.turn(3);
  }
  if(wMove == true){
    bob.accelerate(.02);
  }
  if(spaceShoot == true){
    pewPew.add(new Bullet());
  }
  
// asteroids
    for(int i = 0; i < astArr.size(); i++){
    astArr.get(i).move();
    astArr.get(i).show();
  }
  
// bullets
  for(int i = 0; i < pewPew.size(); i++){
      pewPew.get(i).move();
      pewPew.get(i).show();

    if(pewPew.get(i).getCenterX() < 0 || pewPew.get(i).getCenterX() > width){
        pewPew.remove(i);
        i--;
      }
    else if(pewPew.get(i).getCenterY() < 0 ||pewPew.get(i).getCenterY() > height){
        pewPew.remove(i);
        i--;
      }
  }

  // scoreboard
  fill(#e8fffa);
  textSize(40);
  text("you shot " + score + " patricks!", width/2 - 170, height/2 - 225);


  // Collisions for Asteroids & Spaceship
  for(int i = 0; i < astArr.size(); i++){
    if(dist((float)(bob.getCenterX()), (float)(bob.getCenterY()), (float)(astArr.get(i).getCenterX()), (float)(astArr.get(i).getCenterY())) < 10){
      gameOver = true;
      break;
    }

    for(int a = 0; a < pewPew.size(); a ++){
      if(dist((float)(pewPew.get(a).getCenterX()), (float)(pewPew.get(a).getCenterY()), (float)(astArr.get(i).getCenterX()), (float)(astArr.get(i).getCenterY())) < 20){
        astArr.remove(i);
        pewPew.remove(a);
        score++;
        break;
      }
    }
  }

  // Game Over
  if(gameOver == true){
    gameEnd();
  }
  
   // Reset Asteroids
  if(astArr.size() == 0){
    for(int i = 0; i < 10; i++){
      astArr.add(new Asteroid());
      astArr.get(i).accelerate(2);
    }
  }
}

public void gameEnd(){
  fill(255); 
  textSize(40);
  text("Game Over D:", width/2 - 140, height/2 +20);
  textSize(20);
  text("Press Enter to Restart", width/2 - 140, height/2+75);
  bob.stop();
}

public void keyPressed(){
  if (key == 'a'){
    aTurn = true;
  }
  if(key == 'd'){
    dTurn = true;;
  }
  if(key  == 'w'){
    wMove = true;
  }
  if(key == ' '){
    spaceShoot = true;
  }

  if(key == 's'){
    bob.stop();
  }
  if(key == 'q'){
    bob.stop();
    bob.hyperSpace();
  }
  if(key == ENTER){
    background(255);
    gameOver = false;

    bob.restart();
    twinkle = new Star[200];
    astArr = new ArrayList <Asteroid>();
    pewPew = new ArrayList <Bullet>();
    score = 0;

    aTurn = false;
    dTurn = false;
    wMove = false;
    spaceShoot = false;

    setup();
  }
} 
public void keyReleased(){
  if (key == 'a'){
    aTurn = false;
  }
  if(key == 'd'){
    dTurn = false;;
  }
  if(key  == 'w'){
    wMove = false;
  }
  if(key == ' '){
    spaceShoot = false;
  }
}
