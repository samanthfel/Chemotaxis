Pond[] fish;
void setup(){
  size(400,400);
  fish = new Pond[(int)(Math.random()*40)];
  for(int i = 0; i <= fish.length-1; i++)
    fish[i] = new Pond((int)(Math.random()*400),(int)(Math.random()*400));
}

void draw(){
  background(50, 119, 150);
  for(int i = 0; i < fish.length; i++){
    fish[i].show();
    fish[i].move();
  }
}

class Pond{
  int myX, myY, moveX, moveY;
  color myColor;
  Pond(int x, int y){
    myX = x;
    myY = y;
    myColor = 0;
    moveX = (int)(Math.random()*3)+1;
    moveY = (int)(Math.random()*3)+1;
  }
 
 void show(){
   myColor = color(227, 161, 75);
   strokeWeight(0.5);
   fill(myColor);
   triangle(myX+5, myY, myX+40, myY-20,myX+40, myY+20);
   ellipse(myX, myY, 40, 40);
   fill(255);
   ellipse(myX-8, myY-3, 6, 8);
 }
 void move(){
   if (mouseX < myX){
     myX = myX - moveX;
   }else 
     myX = myX + moveX;
   if (mouseY> myY){
     myY = myY + moveY;
    }else 
     myY = myY - moveY;
  }
}
