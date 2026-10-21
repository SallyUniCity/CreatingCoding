// All work by Salman Rehman

float time = 0;  //wave animation
float[] circleX;    // x pos of the circles



void setup() {

  size(800, 600);
  background(255);
  circleX = new float[] {100, 200, 300, 400, 500};
}


void draw() {
  background(255);

  time += 0.05; // to animate the wave 
  
  drawTopWave(); //adds the top wave into the sketch
  drawBottomWave(); // draws the bottom wave
  drawCirclesInWave(); // draw the album covers and circles into the
}


 float topWaveY(float x) {
   return 150 + sin((x * 0.01) + time) * 50;
 }
 
void drawTopWave() {
  stroke(0);
  noFill();
  beginShape();
  for (float x = 0; x < width; x +=5) {
    vertex(x, topWaveY(x));
  }
  endShape();
}



float bottomWaveY(float x) {
  return 450 + sin((x * 0.01) + time) * 50;
}

void drawBottomWave() {
  stroke(0);
  noFill();
  beginShape();
  for (float x = 0; x < width; x += 5) {
    vertex(x, bottomWaveY(x));
  }
  endShape();
}

void drawCirclesInWave() {
  fill(0);
  noStroke();

  for (int i = 0; i < circleX.length; i++) {
    float cx = circleX[i];
    float cy = (topWaveY(cx) + bottomWaveY(cx)) / 2;

    ellipse(cx, cy, 40, 40);
  }
}
