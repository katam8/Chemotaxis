//declare bacteria variables here   
int xPos, yPos; //xD, yD; 
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
  int xPos, yPos, xD, yD; 
  Bacteria() {
    xPos = width/2;
    yPos = height/2;
  }
  
  void move() {
    xPos += (int)(Math.random() * 7) - 3;
    yPos += (int)(Math.random() * 7) - 3;
    if(mousePressed) {
    xD += (int)(Math.random() * 7) - 3;
    yD += (int)(Math.random() *7) - 3;
    xPos = mouseX + xD;
    yPos = mouseY + yD;
    } else {
      
}
  
  void display(){
    fill((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255), 127);
    ellipse(xPos, yPos, 25, 25);
  }     
}
