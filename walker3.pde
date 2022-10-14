class Walker3 {
  int x,y;
  // A random walker object!
  
  Walker3() {
    x = width/4;
    y = height/4;
  
  }
  
   

  
  void render() {
    stroke(#462398);
    point(x,y);
  }
  

void step() {
  int choice = int(random(4));
  if (choice == 0) {
    x--;
  }
  
  
  else if (choice == 1) {
    x++; }
    
    
    else if (choice == 2) {
      y++; }
      

     else {
          y--;
     }
    
    
    x = constrain(x,0, width-1);
    y = constrain(y,0, height-1);
     
  }
}


    
