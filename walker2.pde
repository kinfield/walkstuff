class Walker2 {
  int x,y;
  // A random walker object!
  
  Walker2() {
    x = width/5;
    y = height/5;
  
  }
  
   

  
  void render() {
    stroke(#BF6747);
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


    
