Bacteria [] pneunomia;


void setup()   
 {     
 	size(400,400);  
 	pneunomia = new Bacteria[10];
 	for (int i = 0; i < 10; i ++) {
 		pneunomia[i] = new Bacteria((i * 15) + 10,(i * 15) + 10);
 	}
 }   
 void draw()   
 {    
 	background(255);
  	for (int i = 0; i < 10; i ++) {
 		pneunomia[i].show();
 		pneunomia[i].move();
 	} 

 }  
 class Bacteria    
 {     
 	int xPos;
	int yPos;
	int bacteriaColor;
 	Bacteria(int x, int y) {
 		xPos = x;
 		yPos = y;
 		bacteriaColor = color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));   
 	}
 	void move() {
 		if (xPos > 380) {
 			xPos = xPos + (int)(Math.random() * 3) - 2;
 		}
 		else if (xPos < 20) {
 			xPos = xPos + (int)(Math.random() * 3);
 		}
 		else if (yPos > 380) {
 			yPos = yPos + (int)(Math.random() * 3) - 2;
 		}
 		else if (yPos < 20) {
 			yPos = yPos + (int)(Math.random() * 3);
 		}
 		else {
 		xPos = xPos + (int)(Math.random() * 3) - 1;
 		yPos = yPos + (int)(Math.random() * 3) - 1;
 		} 
 	}
 	void show() {
 		fill(bacteriaColor);
 		ellipse(xPos,yPos,5,5);
 	}
 }    