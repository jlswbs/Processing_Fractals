// IFS Sierpinski triangle fractal //


void setup() {
  
  size(640,480);
  background(255);
  
}

void draw() {
  
  sierpinski(0, height, width/2, 0, width, height, 8);

}

void sierpinski(float x1, float y1, float x2, float y2, float x3, float y3, int n) {

  if (n > 0) {

    triangle(x1, y1, x2, y2, x3, y3);
    
    float h1 = (x1+x2)/2.0;
    float w1 = (y1+y2)/2.0;
    float h2 = (x2+x3)/2.0;
    float w2 = (y2+y3)/2.0;
    float h3 = (x3+x1)/2.0;
    float w3 = (y3+y1)/2.0;
    
    sierpinski(x1, y1, h1, w1, h3, w3, n-1);
    sierpinski(h1, w1, x2, y2, h2, w2, n-1);
    sierpinski(h3, w3, h2, w2, x3, y3, n-1);

  }

}
