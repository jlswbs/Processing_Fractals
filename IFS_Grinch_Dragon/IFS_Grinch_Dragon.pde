// IFS Grinch dragon fractal //

  float x = 0.0;
  float y = 0.0;
  float x1 = 0.0;
  float y1 = 0.0;

void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {
  
  for (int i=0; i<1000; i++) {
    
    float c = (int)random(5);
    
    if (c < 1.0 / 3.0) {
      
      x1 = (x + y / sqrt(3.0)) / 2.0;
      y1 = (x / sqrt(3.0) - y) / 2.0;
    
    } else if (c < 2.0 / 3.0) {
      
      x1 = ((x - y / sqrt(3.0)) / 2.0) + 0.5;
      y1 = ((-x / sqrt(3.0) - y) / 2.0) + 1.0 / (2.0 * sqrt(3.0));
    
    } else {
      
      x1 = ((x + y / sqrt(3.0)) / 2.0) + 1.0;
      y1 = -(x / sqrt(3.0) - y) / 2.0;
      
    }
    
    x = x1;
    y = y1;
    
    point(30 + (310 * x), 240 + (220 * y));
    
  }

}
