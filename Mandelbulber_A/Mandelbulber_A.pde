// Mandelbulber A fractal //

  int maxIterations = 2;
  int power = 7;
  float xmin = -1.5;
  float ymin = -1.5;
  float zmin = -1.5;
  float wh = 3.0;
  float addx = 0.0;
  float addy = 0.0;

void setup() {
  
  size(640, 480);
  background(255);
  
  addx = wh / width;
  addy = wh / height;

}

void draw() {

  float x = xmin;
  
  for (int i = 0; i < width; i++) {
    
    float y = ymin;
    
    for (int j = 0; j < height; j++) {
      
      float z = zmin;
      
      for (int k = 255; k > 0 && z < -1*zmin; k--) {
        
        float dr = 1.0;
        float nx = x;
        float ny = y;
        float nz = z;
        float rad = sqrt(x*x + y*y + z*z);
        int n = 0;
        
        while (n < maxIterations) {
          
          float powRad = pow(rad, power);
          float theta = atan2(sqrt(nx*nx + ny*ny), nz) * power;
          float phi = atan2(ny, nx) * power;
          nx = sin(theta) * cos(phi) * powRad + x;
          ny = sin(theta) * sin(phi) * powRad + y;
          nz = cos(theta) * powRad + z;
          dr = dr * power * pow(rad, power-1.0) + 1.0;
          rad = sqrt(nx*nx + ny*ny + nz*nz);
          if (rad > 4) break;
          n++;
          
        }
        
        if (0.5 * log(rad) * rad / dr < 0.00001) {
         
          if (i > 0 && i < width && j > 0 && j < height){
            
            stroke(k, k, k);
            point(i, j);
            
          }
          
          break;
          
        } else {
          
          k--;
          z += 0.5 * log(rad) * rad / dr;
         
        }
         
      }
      
      y += addy;
      
    }
    
    x += addx;
    
    println((float) i / (width) * 100 + " %");
    
  }

}
