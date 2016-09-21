Bacteria [] pneunomia;


void setup()   
 {     
 	size(400,400);  
 	pneunomia = new Bacteria[15];
 	for (int i = 0; i < 15; i ++) {
 		pneunomia[i] = new Bacteria((i * 15) + 10,(i * 15) + 10);
 	}
 }   
 void draw()   
 {    
 	background(255);
  	for (int i = 0; i < 15; i ++) {
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
 		else if (mousePressed == true) {
 			if (mouseX > 200) {
 				xPos = xPos + (int)(Math.random() * 3) - 2;
 				if (mouseY > 200) {
	 				yPos = yPos + (int)(Math.random() * 3) - 2;
	 			}
	 			else if (mouseY < 200) {
	 			yPos = yPos + (int)(Math.random() * 3); 
	 			}
	 		}
	 		else if (mouseX < 200) {
	 			xPos = xPos + (int)(Math.random() * 3);
 				if (mouseY > 200) {
	 				yPos = yPos + (int)(Math.random() * 3) - 2;
	 			}
	 			else if (mouseY < 200) {
	 			yPos = yPos + (int)(Math.random() * 3); 
	 			}
	 		}
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