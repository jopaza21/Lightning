int x = 0;
int y = 200;
int newx;
int newy;
boolean slash = false;

void setup() {
  size(400,400);
}
void draw() {
  if(slash == true){
    newx = x + ((int)(Math.random()*10));
    newy = y + ((int)(Math.random()*20 - 10));
    line(x,y,newx,newy);
    x = newx;
    y = newy;
    if(x >= mouseX + 10){
      slash = false;
    }
  }
}

void mouseClicked() {
  slash = true;
}
