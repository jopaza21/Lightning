int x = (int)(Math.random() * 250 + 75);
int y = 80;
int endx = 0;
int endy = 0;
int wh = 8;
int r = 255;
int g = 255;
int b = 255;
boolean paint = false;

void setup() {
  background(40);
  size(400,400);
  //canvas
  rect(75,75,250,200);
  noStroke();
  fill(255,255,0);
  rect(75,300,40,40); //115
  fill(255,0,0);
  rect(125,300,40,40);
  fill(0,0,255);
  rect(175,300,40,40);
  // size buttons
  fill(255,255,255);
  rect(225,300,15,15);
  rect(225,320,15,15);
  // canvas
  fill(0,200,0);
  rect(285,300,40,40);
}

void draw() {
  fill(r,g,b);
  if(paint == true){
    if(x >= 310){
      endx = x + (int)(Math.random()*6 - 4);
    } else if (x <= 90){
      endx = x + (int)(Math.random()*6 - 2);
    } else {
      endx = x + (int)(Math.random()*6 - 3);
    }
    endy = y + (int)(Math.random()*4);
    ellipse(endx,endy,wh,wh);
    x = endx;
    y = endy;
    if(y > 275 - wh/2){
      paint = false;
    }
    if ((mousePressed == true) && ((mouseX < 75 || mouseX > 325) || (mouseY < 75 || mouseY > 275))) {
    paint = false;
    }
  }
  if((mousePressed == true) && (mouseX >= 75 && mouseX <= 325) && (mouseY >= 75 && mouseY <= 275)){
    paint = true;
  }
  if((mousePressed == true) && (mouseX >= 75 && mouseX <= 115) && (mouseY >= 300 && mouseY <= 340)){
    r = 255;
    g = 255;
    b = 0;
  }
  if((mousePressed == true) && (mouseX >= 125 && mouseX <= 165) && (mouseY >= 300 && mouseY <= 340)){
    r = 255;
    g = 0;
    b = 0;
  }
  if((mousePressed == true) && (mouseX >= 175 && mouseX <= 215) && (mouseY >= 300 && mouseY <= 340)){
    r = 0;
    g = 0;
    b = 255;
  }
  if((mousePressed == true) && (mouseX >= 285 && mouseX <= 325) && (mouseY >= 300 && mouseY <= 340)){
    background(40);
    fill(255);
    rect(75,75,250,200);
    noStroke();
    fill(255,255,0);
    rect(75,300,40,40); //115
    fill(255,0,0);
    rect(125,300,40,40);
    fill(0,0,255);
    rect(175,300,40,40);
    // size buttons
    fill(255,255,255);
    rect(225,300,15,15);
    rect(225,320,15,15);
    // canvas
    fill(0,200,0);
    rect(285,300,40,40);
  }
  if((mousePressed == true) && (mouseX >= 225 && mouseX <= 240) && (mouseY >= 300 && mouseY <= 315)){
    if(wh <= 30){
      wh += 1;
    }
  }
  if((mousePressed == true) && (mouseX >= 225 && mouseX <= 240) && (mouseY >= 320 && mouseY <= 335)){
    if(wh >= 2){
      wh -= 1;
    }
  }
}

void mousePressed() {
  int rand = (int)(Math.random() * 250 + 75);
  if(rand <= 75 + wh/2){
    x = rand + wh/2;
  } else if (rand >= 325 - wh/2){
    x = rand - wh/2;
  } else {
    x = rand;
  }
  y = 75 + wh/2;
  endx = 0;
  endy = 0;
}
