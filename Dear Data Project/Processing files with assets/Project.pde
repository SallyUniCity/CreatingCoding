
void setup() {
  size(600, 600);
  background(255);
  frameRate(120);
}



void draw() {
  fill(#F00202);
  strokeWeight(0);
  rect(width/2, height/2, 20 ,20);
  fill(150);
  circle(mouseX, mouseY, 50);
  strokeWeight(10);
  line(0,200,600,200);
  line(0,400,600,400);
}
