pac p; //class
poro [] po; //class array
int count=8; //chance
void setup()
{
  size(1500, 800); //화면 설정

  p=new pac(60, height/2, 60, 12); //new pacman x,y,size,velocity
  po=new poro[4];


  for (int i=0; i<2; i++)  //new poro x,y,size
  {
    po[2*i]=new poro2((float)width/5*(i+1), (float)height/5*(i+1), 3*(i+1));
    po[(2*i)+1]=new poro3((float)width/5*(i+3), (float)height/5*(i+3), 3*(i+3));
  }
}

void draw()
{
  p.display();
  for (int i=0; i<4; i++)
  {
    po[i].dnk();
    po[i].move(i%2);
    if ((dist(p.x, p.y, po[i].x, po[i].y)<30+(po[i].d)*5)&&i%2==0)
    {
      p.x=60;
      p.y=height/2;  //poro와 pacman이 닿으면 위치 초기화
      count--;
    }
    else if((dist(p.x, p.y, po[i].x, po[i].y)<30+(po[i].d)*5)&&i%2==1)
    {
      p.x=60;
      p.y=height/2;  //poro와 pacman이 닿으면 위치 초기화
      count-=2;
    }
  }
  textSize(80);
  fill(0,0,0);
  text("Life: ",0,height/8);
  text(count,150,height/8);
  if (count==0)
  {
    background(0);
    textSize(150);
    fill(255, 255, 255);
    text("You lose!!", width/4, height/2);
    return;
  } else if (p.x+30>width)
  {
    background(0);
    textSize(150);
    fill(255, 255, 255);
    text("You Win!!", width/4, height/2);
    return;
  }
}

void keyPressed()
{
  p.move();
}
