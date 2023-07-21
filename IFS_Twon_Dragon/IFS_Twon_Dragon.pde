// IFS Twon dragon fractal //

  int m = 3;
  float x = 1.0;
  float y = 1.0;
  float[] a = new float[m];
  float[] b = new float[m];
  float r = sqrt(1.25 * m);

void setup() {
  
  size(640, 480);
  background(255);
  
  for (int i=0; i<m; i++) {
    
    a[i] = cos(TWO_PI * i / m);
    b[i] = sin(TWO_PI * i / m);
      
  }  
  
}

void draw() {
  
  for (int i=0; i<1000; i++) {
    
    int c = (int)random(m);
    float ra = sqrt(3.0 * (x * x + y * y));
    float x1 = -x / r + y / (ra * r) + a[c];
    float y1 = -x / (ra * r) - y / r + b[c];
    x = x1;
    y = y1;
    
    point(290 + (165 * x), 230 + (120 * y));
    
  }

}
