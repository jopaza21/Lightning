int x;
int y;
int newx;
int newy;
boolean conjure = false;

void setup() {
  size(400,400);
}
void draw() {
  if(conjure == true){
    x = (int)(Math.random() * 250) + 50;
    conjure = false;
  }
  
}

void mousePressed() {
  conjure = true;
}
