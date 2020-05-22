int x = 315;
int y = 10;
int h = 80;
int ly = 40;

void setup(){
  size(700,400);
  
  background(255);

  strokeWeight(4); // spessore linea

  stroke(100);

// recipiente
  line(200, 100, 200, 350);
  line(200, 350, 500, 350);
  line(500, 350, 500, 100);

// acqua
  stroke(153, 255, 255); 
  fill(153, 255, 255);
  rect(205, 140, 290, 205);

// barattolo - parte emersa
  strokeWeight(1); 
  stroke(255, 178, 102); 
  fill(255, 178, 102);
  rect(x, y, 60, ly);

// barattolo - parte immersa
  stroke(204, 255, 153); // colore azzurrino
  fill(204, 255, 153);
  rect(x, y + ly, 60, h - ly);

}

void draw(){
  background(255);

  strokeWeight(4); // spessore linea

  stroke(100);

// recipiente
  line(200, 100, 200, 350);
  line(200, 350, 500, 350);
  line(500, 350, 500, 100);

// acqua
  stroke(153, 255, 255); 
  fill(153, 255, 255);
  rect(205, 140, 290, 205);

// barattolo - parte emersa
  strokeWeight(1); 
  stroke(255, 178, 102); 
  fill(255, 178, 102);
  
  y = mouseY;

  if (y < 350 - h) {
    rect(x, y, 60, h);
  }

  if (y >=  347 - h) {
    rect(x, 347 - h, 60, h);
  }

// barattolo - parte immersa
  stroke(204, 255, 153); 
  fill(204, 255, 153);
  
}
