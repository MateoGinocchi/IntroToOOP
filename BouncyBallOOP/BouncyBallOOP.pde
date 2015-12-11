int count = 50;
Ball[] balls = new Ball[count];



void setup() {
  size(800, 600);
  int i = 0;
  while (i<count) {
    balls[i] = new Ball(round(random(25, 50)));
    i++;
  }
}

void draw() {
  background(0);
  for (int j=0; j<count; j++) {
    balls[j].display();
    balls[j].move();
    balls[j].walls();
  }
}