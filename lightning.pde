float x = 0;
float y = 200;
float newx;
float newy;

void setup(){
  size(400,400);
}
void draw(){
  newx = x + ((float)Math.random()*10);
  newy = y + ((float)Math.random()*20-10);
  line(x,y,newx,newy);
  x = newx;
  y = newy;
}
