// Mandelbrot fractal //

  int maxiter = 256;
  float left = -1.5;
  float right = 1.5;
  float top = -1.5;
  float bottom = 1.5;


void setup() {
  
  size(640, 480);
  background(255);
  
}

void draw() {

  for(int i = 0; i < width; i++) {
    
    for(int j = 0; j < height; j++) {

      float x = 0.0;
      float y = 0.0;
      float x0 = -2.1 + i * (right-left) / width;
      float y0 = -1.5 + j * (bottom-top) / height;
        
      for(int iter = 0; iter < maxiter; iter = iter + 8) {

        if ((x*x + y*y) < 4.0 ) {
          
          float tmp = x*x - y*y + x0;  
          y = 2.0 * x * y + y0;
          x = tmp;
          
          stroke(iter);
          point(i,j);
          
        }
        
      }
      
    }

  }

}
