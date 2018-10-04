//declare bacteria variables here   
Bacteria[] George;

void setup() {     
  size(500, 500);
 	//initialize bacteria variables here   
  George = new Bacteria[50];
  for(int i = 0; i < George.length; i++) {
    George[i] = new Bacteria();
  }
}  
 
void draw() {    
 //move and show the bacteria  
 background(#17274D);
 for(int i = 0; i < George.length; i++) {
    George[i].display();
    George[i].move();
  }
} 
 
class Bacteria {     
 	//lots of java! 
  int xPos, yPos; 
  Bacteria() {
    xPos = mouseX;
    yPos = mouseY;
  }
  
  void move() {
    xD +=
  }
  
  void display(){
    fill(255, 255, 255, 127);
    ellipse(mouseX, mouseY, 50, 50);
  }     
}
