// All work by Salman Rehman

void setup(){
  
  size(800,600);
  background(255);
  
}


void draw(){
 background(255);
 
 noFill();
 stroke(0);
 strokeWeight(2);
 
 //first half of the S
 //beizer is the curve line (note to self)
  bezier(750, 100,
         450, 50,
         450, 300,
         150, 250);
  bezier(150,250,
        -100,200,
        100, 550,
        750,450);
  
  
}
