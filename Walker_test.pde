float heading;
float x;
float y; 
float speed = 1;
float thickness = 1;

float r = 128;
float g = 128;
float b = 128;

float prevLeftX;
float prevLeftY;
float prevRightX;
float prevRightY;


int unit = 40;
int count;
Module[] mods;

Walker w;
Walker2 w2;
Walker3 w3;

void setup() {
  size(800,600);
  noSmooth();
  frameRate(500);
  int wideCount = width / unit;
  int highCount = height / unit;
  count = wideCount * highCount;
  mods = new Module[count];
  
  int index = 0; 
  for (int y = 0; y < highCount; y++) {
    for (int x = 0; x < wideCount; x++) {
      mods[index++] = new Module(x*unit, y*unit, unit/2, unit/2, random(0.05, 0.8), unit);
   
  
  

  
  w = new Walker();
 w2 = new Walker2();
   w3 = new Walker3();
    }
  }

}




void draw() {
  for (Module mod : mods) {
 mod.update();
 mod.display();
  }
   w.step();
  w.render();
    w2.step();
  w2.render();
      w3.step();
  w3.render();
   
  

  heading += sin(radians(frameCount))*3 + randomGaussian()*4;

  r += random(-10, 10);
  g += random(-10, 10);
  b = constrain(b, 0, 256);

  r = constrain(r, 0, 256);
  g = constrain(g, 0, 256);
  b += random(-10, 10);

  x += cos(radians(heading))*speed;
  y += sin(radians(heading))*speed;

  if (x < 0) {
    x = width;
    prevLeftX += width;
    prevRightX += width;
  }
  if (x > width) {
    x = 0;
    prevLeftX -= width;
    prevRightX -= width;
  }

  if (y < 0) {
    y = height;
    prevLeftY += height;
    prevRightY += height;
  }
  if (y > height) {
    y = 0;
    prevLeftY -= height;
    prevRightY -= height;
  }


  float leftX = x + cos(radians(heading-90))*thickness;
  float leftY = y + sin(radians(heading-90))*thickness;

  float rightX = x + cos(radians(heading+90))*thickness;
  float rightY = y + sin(radians(heading+90))*thickness;

  noStroke();
  fill(r, g, b);

  beginShape();
  vertex(prevLeftX, prevLeftY);
  vertex(leftX, leftY);
  vertex(rightX, rightY);
  vertex(prevRightX, prevRightY);
  endShape(CLOSE);

  prevLeftX = leftX;
  prevLeftY = leftY;
  prevRightX = rightX;
  prevRightY = rightY;
}






/////////////////////////////////////////////////////////////////////////
