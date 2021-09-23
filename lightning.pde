int x = (int)(Math.random() * 250 + 50);
int y;
int newx;
int newy;
boolean conjure = false;

void setup() {
  size(400,400);
}
void draw() {
  if(mouseY > y){
    if(mouseX >= x){
      newx = x + (int)(Math.random() * 16 - 6);
    }
    if(mouseX <= x){
      newx = x + (int)(Math.random() * 16 - 10);
    }
  } else {
    newx = x + (int)(Math.random() * 16 - 8);
  }
  newy = y + (int)(Math.random()*5);
  line(x,y,newx,newy);
  x = newx;
  y = newy;
}

void mousePressed() {
}
