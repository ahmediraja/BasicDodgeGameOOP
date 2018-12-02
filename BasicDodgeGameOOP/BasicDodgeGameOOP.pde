int numBalls = 7;

Ball[] bs = new Ball[numBalls];
Char player = new Char();

float gameState = 0;

void setup() {
  size(800, 800);
  frameRate(60);
  noStroke();
  //bs = new Ball[numBalls];

  for (int i = 0; i < numBalls; i++) {
    bs[i] = new Ball();
  }
}
/*
boolean hitD() {
 for (int i = 0; i < numBalls; i++) {
 if (dist(bs[i].pos.x, bs[i].pos.y, player.pos.x, player.pos.y) < (bs[i].ballDia/2)+(player.charSize/2) ) {
 return true;
 } else {
 return false;
 }
 }
 }
 */

void subHealth() {
  for (int i = 0; i < numBalls; i++) {
    if (dist(bs[i].pos.x, bs[i].pos.y, player.pos.x, player.pos.y) < (bs[i].ballDia/2)+(player.charSize/2)) {
      bs[i].resetBall();
      player.health -= 100;
    }
  }
}

void drawHealth() {
  fill(255, 0, 0);
  rect(0, 0, player.health, height*0.05);
}

void checkGame() {
  if (player.health <= 0) {
    gameState = 1;
  }
}

void draw() {
  background(0);
  checkGame();

  if (gameState == 0) {
    for (Ball b : bs) {
      b.update();
    }
    player.update();
  } else if (gameState == 1) {
    textSize(50);
    text("GAME OVER", width/2, height*0.65);
  }

  println(gameState);
} 
