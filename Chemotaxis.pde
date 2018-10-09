//declare bacteria variables here   
int xPos, yPos; //xD, yD; 
Bacteria[] George;

void setup() {     
  size(500, 500);
 	//initialize bacteria variables here   
  George = new Bacteria[100];
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
  int clr1 =(int)(Math.random() * 256);
  int clr2 =(int)(Math.random() * 256);
  int clr3 =(int)(Math.random() * 256);
  Bacteria() {
    xPos = width/2;
    yPos = height/2;
  }
  
  void move() {
    xPos += (int)(Math.random() * 7) - 3;
    yPos += (int)(Math.random() * 7) - 3;
    if(mousePressed) {
      xPos = (int)(Math.random() * width);
      yPos = (int)(Math.random() * height);
    }
}
  
  void display(){
    fill(clr1, clr2, clr3, 120);
    ellipse(xPos, yPos, 30, 30);
  }     
}
