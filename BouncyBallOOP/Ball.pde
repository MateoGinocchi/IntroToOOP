class Ball {
  //declaring all information (fields) contained within the Ball class
  PVector loc, vel;
  int diam;
  color c;
  int tDiam;
  

  //this is a constructor. you can have more than one constructor for a given class
  Ball() {
    diam = 50;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel = PVector.random2D();
    vel.mult(5);
    c = color(random(255), random(50), random(100, 255)); 
  }
  Ball(int tDiam) {
   diam = tDiam;
   loc = new PVector(random(tDiam, width-tDiam), random(tDiam, height-tDiam));
   vel = PVector.random2D();
   vel.mult(5);
   c = color(random(255), random(50), random(100, 255));  
  }

  //after declaring fields and setting up constructors, you can define your methods
  void display() {
    fill(c);
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
  }
  void move() {
    loc.add(vel);
  }
  void walls() {
    if (loc.x+diam/2 >= width | loc.x-diam/2 <= 0) {
      vel.x*=-1;
    }
    if (loc.y+diam/2 >= height | loc.y-diam/2 <= 0) {
      vel.y*=-1;
    }
  }
}