class Walker2 {
  int x,y;
  // A random walker object!
  
  Walker2() {
    x = width/5;
    y = height/5;
  
  }
  
   

  
  void render() {
      stroke(g);
    point(x,y);
  }
  

void step() {
  int choice = int(random(4));
  if (choice == 1) {
    x--;
  }
  
  
  else if (choice == randomGaussian()) {
    x++; }
    
    
    else if (sin(choice) == randomGaussian()) {
      y++; }
      

     else {
          y--;
     }
    
    
    x = constrain(x,0, width-1);
    y = constrain(y,0, height-1);
     
  }
}


    
