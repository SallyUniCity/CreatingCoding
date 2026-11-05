
void setup() {
  size(1000, 1000);
  background(255);
  frameRate(120);
}



void draw() {
  fill(#F00202);
  strokeWeight(0);
  rect(width/2, height/2, 20, 20);
  fill(150);
  circle(mouseX, mouseY, 50);
  strokeWeight(10);

  WaveLine();
  RandCircle();
}



void RandCircle() {

  circle(random(500), random(500) , 100);
}

void TopLine(){ 
  line(0, 300, width, 300);
}

void BottomLine(){
line(0, 700, width, 700);
}


void WaveLine() {

  TopLine();
  BottomLine();
}
