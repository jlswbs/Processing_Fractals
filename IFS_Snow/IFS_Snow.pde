// IFS Snow fractal //


void setup() {
  
  size(640,480);
  background(255);
  
}


void draw() {
  
  int i, l, n, ix, iy;
  int m = 6;
  float x = 0.0, y = 0.0, x1, y1;
  float[] a = new float[10];
  float[] b = new float[10];
   
  for (i=0; i<m; i++) {
     
    a[i] = cos(TWO_PI * i / (float)m);
    b[i] = sin(TWO_PI * i / (float)m);
    
  }

  for (n=0; n<1000; n++) {
  
    l = (int)random(m);
    x1 = y + a[l];
    y1 = x + b[l];
    x1 /= 3.0;
    y1 /= 3.0;
    x = x1;
    y = y1;

    point(320 + (480 * x), 240 + (480 * y));

  }

}
