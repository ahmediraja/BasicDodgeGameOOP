class Char {

  float charSize;
  private PVector pos;
  private PVector vel;
  private float health;

  Char() {
    charSize = 60;
    pos = new PVector(mouseX, height-(charSize/2));
    vel = new PVector(2, 0);
    health = 800;
  }

  void drawChar() {
    fill(255);
    ellipse(pos.x, pos.y, charSize, charSize);
  }

  boolean hitREdge() { //hit right edge
    if (pos.x > (width-(charSize/2))) {
      return true;
    } else {
      return false;
    }
  }

  boolean hitLEdge() { //hit left edge
    if (pos.x < (0+(charSize/2))) {
      return true;
    } else {
      return false;
    }
  }

  void movement() {
    pos = new PVector(mouseX, height-(charSize/2));
    
    if (keyPressed == true) {
      if (keyCode == RIGHT) {
        pos.add(vel);
      } else if (keyCode == LEFT) {
        pos.sub(vel);
      }
      
    }

    if (hitLEdge() == true) {
      pos.set(charSize/2, height-(charSize/2));
    } else if (hitREdge()) {
      pos.set(height-(charSize/2), height-(charSize/2));
    } else {
      
    }
  }

  void update() {
    movement();
    drawChar();
    drawHealth();
    subHealth();
  }
}
