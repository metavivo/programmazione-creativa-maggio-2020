w = 0;
e = 0;
r = 0;
t = 300;
u = 275;
 void setup () {
     size(550,600);
     background(0);
     translate(275,300);
    // noStroke();
    strokeWeight(2);
    fill(0,0,255);
    // rect(-50,-50,100,100);
     }
 
void draw () {
    background(0);
    //t=t+0.5;
    //u=u+0.7;
    //e=e+-0.04;
   w=w+0.02
    r=r+-0.02;
    translate(u,t);
    rotate(r);
    fill(0,255,0);
    ellipse(0,0,300,300);
    
    fill(255,0,255);
    ellipse(0,0,150,150);
    
    fill(255,255,0);
    ellipse(0,0,50,50);
    
    //rect(-50,-50,100,100);
    fill(0,255,255);
    
    //rotate(w);
    rect(54,-54,50,-50);
    
    fill(0,0,255);
    rotate(r);
    rect(-54,-54,-50,-50);
    rect(54,54,50,50);
    stroke(255,0,0);
    line(-50,-50,50,50);
    //line(50,-50,-50,50);
    
    
    fill(0,255,255);
 
    rotate(w);
    rect(-54,54,-50,50);
    line(50,-50,-50,50);
    
    
}
