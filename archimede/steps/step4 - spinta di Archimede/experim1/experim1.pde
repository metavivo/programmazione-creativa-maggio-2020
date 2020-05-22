int x = 315;
float y = 10;
float h = 80;
int lx = 60;
int ly = 40;
int lyFreccia = 50;
float a = 0;
float b = 0;
float L = 0;

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

//--------------------------------------
//           FORZA PESO

  strokeWeight(3); 
// il corpo non oltrepassa il fondale
  if (y <  347 - h) {
    stroke(0, 0, 255);
    line(x + lx/2, mouseY, x + lx/2, mouseY + 70);
    line(x + lx/2, mouseY + 70, x + lx/2 - 5, mouseY + 70 - 10);
    line(x + lx/2, mouseY + 70, x + lx/2 + 5, mouseY + 70 - 10);
  } else {
    stroke(0, 0, 255);
    line(x + lx/2, 347 - h/2, x + lx/2, 347 - h/2 + 70);
    line(x + lx/2, 347 - h/2 + 70, x + lx/2 - 5, 347 - h/2 + 70 - 10);
    line(x + lx/2, 347 - h/2 + 70, x + lx/2 + 5, 347 - h/2 + 70 - 10);  
  }
  
//--------------------------------------
//           SPINTA DI ARCHIMEDE

  strokeWeight(3); 
  
 // corpo parzialmente emerso
  if ((y >= 140 - h) && (y < 140)) {
    stroke(255, 0, 0);
    a = 70 / h;
    b = a * h / 2 - 140 * a;
    L = a * mouseY + b;
    line(x + lx/2, mouseY, x + lx/2, mouseY - L);
    line(x + lx/2, mouseY - L, x + lx/2 - 5, mouseY - L + 10);
    line(x + lx/2, mouseY - L, x + lx/2 + 5, mouseY - L + 10);
}


// corpo completamente immerso
  if ((y > 140) && (y <  347 - h)) {
    stroke(255, 0, 0);
    line(x + lx/2, mouseY, x + lx/2, mouseY - 70);
    line(x + lx/2, mouseY - 70, x + lx/2 - 5, mouseY - 70 + 10);
    line(x + lx/2, mouseY - 70, x + lx/2 + 5, mouseY - 70 + 10);
  }

// il corpo oltrepassa il fondale
  if (y >=  347 - h) {
    stroke(255, 0, 0);
    line(x + lx/2, 347 - h/2, x + lx/2, 347 - h/2 - 70);
    line(x + lx/2, 347 - h/2 - 70, x + lx/2 - 5, 347 - h/2 - 70 + 10);
    line(x + lx/2, 347 - h/2 - 70, x + lx/2 + 5, 347 - h/2 - 70 + 10);
  }
  
 
}
