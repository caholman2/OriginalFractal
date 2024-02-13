public void setup(){
  background(0);
  size(800,800);
  stroke(255,255,255);
  rectMode(CENTER);
  myFractal(400,325,20);
}

public void myFractal(int x, int y, int siz){
  fill(255, 220-siz*5, 220-siz*5);
  
  beginShape();
    vertex(x, y-(7*siz));
    vertex(x-(8*siz), y-(12*siz));
    vertex(x-(17*siz), y-(9*siz));
    vertex(x-(20*siz), y);
    vertex(x-(16*siz), y+(6*siz));
    vertex(x, y+(20*siz));
    vertex(x+(16*siz), y+(6*siz));
    vertex(x+(20*siz), y);
    vertex(x+(17*siz), y-(9*siz));
    vertex(x+(8*siz), y-(12*siz));
    endShape(CLOSE);
  
  if(siz > 1){
    myFractal(x, y, (int)(siz/1.3));
  }
}
