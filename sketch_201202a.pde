int col=20;

Ball balls[]=new Ball[50];

void setup() {
  size(1920, 1080);
  noStroke();
  rectMode(CENTER);
  noCursor();

  for (int i=0; i<balls.length; i++) {
    balls[i]=new Ball();
    balls[i].setColor((int)random(0, 256), (int)random(0, 256), (int)random(0, 256));
  }
}

void draw() {
  background(col);

  for (int i=0; i<balls.length; i++) {
    balls[i].display();
    balls[i].checkEdges();
    balls[i].move();
  }

  fill(255, 255, 255, 128);
  stroke(255);
  strokeWeight(10);
  rect(mouseX, mouseY, 50, 50);

  noStroke();
}

void mouseClicked() {
  //col=(int)random(0, 256);
  for (int i=0; i<balls.length; i++) {
    if (i%3==0) {
      balls[i].isMoving=!balls[i].isMoving;
    }
  }
}
