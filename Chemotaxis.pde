Bacteria pneunomia;

void setup()   
 {     
 	size(400,400);
 	pneunomia = new Bacteria(50,50); 
 }   
 void draw()   
 {    
 	pneunomia.show();  
 }  
 class Bacteria    
 {     
 	int xPos;
	int yPos;
	int bacteriaColor;
 	bacteria(int x, int y) {
 		xPos = x;
 		yPos = y;
 		bacteriaColor = color((int)(random() * 256),(int)(random() * 256),(int)(random() * 256));   
 	}
 	void move() {
 		xPos = xPos + (int)(random() * 3) - 1; 
 	}
 	void show() {
 		fill(bacteriaColor);
 		ellipse(xPos,yPos),5,5);
 	}
 }    