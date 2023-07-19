// IFS Tree-Root fractal //


void setup() {
  
  size(640,480);
  background(255);
  
}


void draw() {
  
  float x = 0.0;
  float y = 0.0;
  float x1 = 0.0;
  float y1 = 0.0;
  float denom = 0.0;
  
  for (int i=0; i<1000; i++) {
    
    switch (int(random(2.0))) {
      case 0:
         x1 = y / sqrt(2.0) + 1.5;
         y1 = -x / sqrt(2.0) + 1.5;
         break;
      case 1:
         x1 = -y / sqrt(2.0) + 0.5;
         y1 = x / sqrt(2.0) + 0.5;
         break;
      }
      switch (int(random(2.0))) {
      case 0:
         x = x1 - 2.0;
         y = y1;
         break;
      case 1:
         denom = (x1 - 2.0) * (x1 - 2.0) + y1 * y1;
         x = (x1 - 2.0)/denom;
         y = y1/denom;
         break;
      }
      
      point(420 + (150 * x), 240 + (150 * y));
      
   } 

}
