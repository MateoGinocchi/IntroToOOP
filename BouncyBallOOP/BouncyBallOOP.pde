Ball b; //declare a new ball called b
Ball c;

void setup() {
  size(800, 600);
  b = new Ball(200);      //initialize b as a new object of the Ball class
  c = new Ball(100);
}

void draw() {
  background(0);
  b.display();         //call b's display() method
  c.display();         //call c's display() method
  b.move();            //call b's move() method
  c.move();            //call c's move() method
  b.walls();           //call b's walls() method
  c.walls();           //call c's walls() method
}