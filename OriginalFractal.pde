public void setup(){
  size(600,600);
}
color one = color(#FF0000);
color two = color(#FFF300);
color three = color(#FFF300);
public void draw(){
  background(0);
  myFractal(300,300,480);
}

public void mousePressed(){
  one = color(#FF0000);
  two = color(#FFF300);
  three = color(#FFF300);
}

public void myFractal(int x, int y, int siz){
  fill(one);
  ellipse(x,y,siz,siz);
  fill(two);
  ellipse(x,y,siz/2,siz/2);
  fill(three);
  ellipse(x,y,siz/4,siz/4);
  
  if(siz > 10){
    myFractal(x-siz,y,siz/2);
    myFractal(x+siz,y,siz/2);
    myFractal(x,y-siz,siz/2);
    myFractal(x,y+siz,siz/2);
  }
}
