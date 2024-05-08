class poro2 extends poro {
  poro2(float a, float b, int c) {
    super(a,b,c);
  }
  poro2(int i) {
    super(i);
  }
  void dnk(){
    dp();
    fill(255,0,0);
    float yy = y+d*6;
    float dxy = d*2.3;
    triangle(x,yy,x-dxy,yy+dxy,x-dxy,yy-dxy);
    triangle(x,yy,x+dxy,yy+dxy,x+dxy,yy-dxy);
  }
}
