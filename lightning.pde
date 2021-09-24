int x = (int)(Math.random() * 250 + 75);
int y = 80;
int endx = 0;
int endy = 0;
boolean paint = false;

void setup() {
  size(400,400);
  //canvas
  rect(75,75,250,200);
  noStroke();
}

void draw() {
  fill(255,255,0);
  if(paint == true){
    if(x >= 310){
      endx = x + (int)(Math.random()*6 - 4);
    } else if (x <= 90){
      endx = x + (int)(Math.random()*6 - 2);
    } else {
      endx = x + (int)(Math.random()*6 - 3);
    }
    endy = y + (int)(Math.random()*4);
    ellipse(endx,endy,8,8);
    x = endx;
    y = endy;
    if(y > 269){
      paint = false;
    }
  }
  if(mousePressed == true){
    paint = true;
  }
}

void mousePressed() {
  x = (int)(Math.random() * 250 + 75);
  y = 80;
  endx = 0;
  endy = 0;
}
