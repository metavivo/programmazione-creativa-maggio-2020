int x = 315;
int y = 10;
int h = 80;
int lx = 60;
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
  rect(x, y, lx, ly);

// barattolo - parte immersa
  stroke(204, 255, 153); // colore azzurrino
  fill(204, 255, 153);
  rect(x, y + ly, lx, h - ly);

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
  
  y = mouseY - h / 2;


// corpo completamente emerso
  if (y < 140 - h) {
    rect(x, y, lx, h);
  }
  
// corpo parzialmente emerso
  if ((y >= 140 - h) && (y < 140)) {
    rect(x, y, lx, 140 - y);
    stroke(204, 255, 153); 
    fill(204, 255, 153);
    rect(x, 140, lx, h - 140 + y);
}

// corpo completamente immerso
  if ((y > 140) && (y <  347 - h)) {
    stroke(204, 255, 153); 
    fill(204, 255, 153);
    rect(x, y, lx, h);
}

// il corpo oltrepassa il fondale
  if (y >=  347 - h) {
    stroke(204, 255, 153); 
    fill(204, 255, 153);
    rect(x, 347 - h, lx, h);
  }
  
}
