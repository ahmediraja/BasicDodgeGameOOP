


class Ball {
  float ballDia;
  PVector pos;
  PVector vel;


  Ball() {
    ballDia = 80;
    pos = new PVector(random(0+(ballDia/2), width-(ballDia/2)), 0);
    vel = new PVector(0, random(6,12));
  }

  void drawBall() {
    fill(255, 0, 255);
    ellipse(pos.x, pos.y, ballDia, ballDia);
  }

  void resetBall() {
    pos.set(random(0+(ballDia/2), width-(ballDia/2)), 0);
  }

  void move() {
    pos.add(vel);

    if (pos.y > height) {
      resetBall();
    }
  }




  void update() {
    drawBall();
    move();
  }
}
