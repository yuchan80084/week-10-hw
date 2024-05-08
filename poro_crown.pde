class poro3 extends poro {
  poro3(float a, float b, int c) {
    super(a,b,c);
  }
  poro3(int i) {
    super(i);
  }
   void dnk(){
    dp();
    fill(255,255,0);
    float yy = y-d*6;
    float dxy = d*2.3;
    triangle(x,yy,x-dxy,yy+dxy/3,x-dxy,yy-dxy);
    triangle(x,yy,x+dxy,yy+dxy/3,x+dxy,yy-dxy);
    triangle(x-dxy/2,yy+dxy/3,x+dxy/2,yy+dxy/3,x,yy-dxy);
  }
}
