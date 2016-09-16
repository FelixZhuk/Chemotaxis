int xPos;
int yPos;
int [] bacteriaColor;
Bacteria pneunomia;

void setup()   
 {     
 	size(400,400);
 	bacteriaColor = new int[2];
 	pneunomia = new Bacteria(); 
 }   
 void draw()   
 {    
 	pneunomia.show();  
 }  
 class Bacteria    
 {     
 	bacteriaColor = [(int)(random() * 256),(int)(random() * 256),(int)(random() * 256)];   
 	bacteria(x,y) {
 		xPos = x;
 		yPos = y;
 	}
 	void move() {
 		xPos = xPos + (int)(random() * 3) - 1; 
 	}
 	void show() {
 		fill(bacteriaColor[(int)(random() * 3)],[(int)(random() * 3)],[(int)(random() * 3)])
 		ellipse(xPos,yPos),5,5);
 	}
 }    