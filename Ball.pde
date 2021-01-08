class Ball {
  float posX, posY, speedX, speedY, diameter;
  // r - red, g - green, b - blue
  int r, g, b;
  // alpha channel
  int a = 255;

  boolean isMoving=true;

  // constructor
  Ball() {
    this.diameter=random(5, 50);
    this.posX=width/2-diameter/2;
    this.posY=height/2-diameter/2;
    this.speedX=random(-5, 5);
    this.speedY=random(-5, 5);
  }

  // constructor
  Ball(float pos, float speed, float diameter) {
    this.posX=pos;
    this.posY=pos;
    this.speedX=speed;
    this.speedY=speed;
    this.diameter=diameter;
  }

  // constructor
  Ball(float posX, float posY, float speed, float diameter) {
    this.posX=posX;
    this.posY=posY;
    this.speedX=speed;
    this.speedY=speed;
    this.diameter=diameter;
  }

  // constructor
  Ball(float posX, float posY, float speedX, float speedY, float diameter) {
    this.posX=posX;
    this.posY=posY;
    this.speedX=speedX;
    this.speedY=speedY;
    this.diameter=diameter;
  }

  // display the ball
  void display() {
    fill(this.r, this.g, this.b, this.a);
    ellipse(this.posX, this.posY, this.diameter, this.diameter);
  }

  // move the ball
  void move() {
    if (isMoving) {
      this.posX+=speedX;
      this.posY+=speedY;
    }
  }

  // check all edges of the ball and change direction
  void checkEdges() {
    if (posX<=diameter/2 || posX >= width-diameter/2) {
      speedX*=-1;
    }
    if (posY<=diameter/2||posY>=height-diameter/2) {
      speedY*=-1;
    }
  }

  // set a color for the ball
  void setColor(int r, int g, int b) {
    this.r=r;
    this.g=g;
    this.b=b;
  }
}
