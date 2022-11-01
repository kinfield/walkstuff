class Walker {
  int x,y;
  float thickness;
  // A random walker object!
    


  
  
  Walker() {
    x = width/8;
    y = height/2;
  
  }
  
   

  
  void render() {
  stroke(r);
    point(x,y);
  }
  

void step() {
  int choice = int(random(4));
  if (choice == 0) {
    x++;
  }
  
  
  else if (choice == 0) {
    x--; }
    
    
    else if (choice == 1) {
      y++; }
      

     else {
          y--;
     }
    
    
    x = constrain(x,0, width-1);
    y = constrain(y,0, height-1);
     
  }
}


    
