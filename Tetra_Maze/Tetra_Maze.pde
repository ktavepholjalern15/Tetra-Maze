#include <MeggyJrSimple.h> // Required line, 1 of 2

struct Point {
  
  int x;
  int y;
  int color;
  int marker=0;
  
};

Point p1 = {4,7,1};// standard up position
Point p2 = {5,7,0};
Point p3 = {6,7,0};
Point p4 = {7,7,0};
Point p5 = {4,6,0};
Point p6 = {5,6,1};
Point p7 = {6,6,0};
Point p8 = {7,6,0};
Point p9 = {4,5,0};
Point p10 = {5,5,0};
Point p11 = {6,5,1};
Point p12 = {7,5,0};
Point p13 = {4,4,0};
Point p14 = {5,4,1};
Point p15 = {6,4,0};
Point p16 = {7,4,0};

Point p17 = {4,7,0};   //  if goes to the right
Point p18 = {5,7,0};
Point p19 = {6,7,0};
Point p20 = {7,7,1};
Point p21 = {4,6,1};
Point p22 = {5,6,0};
Point p23 = {6,6,1};
Point p24 = {7,6,0};
Point p25 = {4,5,0};
Point p26 = {5,5,1};
Point p27 = {6,5,0};
Point p28 = {7,5,0};
Point p29 = {4,4,0};
Point p30 = {5,4,0};
Point p31 = {6,4,0};
Point p32 = {7,4,0};

Point p33 = {4,7,0};  //if down
Point p34 = {5,7,0};
Point p35 = {6,7,1};
Point p36 = {7,7,0};
Point p37 = {4,6,0};
Point p38 = {5,6,1};
Point p39 = {6,6,0};
Point p40 = {7,6,0};
Point p41 = {4,5,0};
Point p42 = {5,5,0};
Point p43 = {6,5,1};
Point p44 = {7,5,0};
Point p45 = {4,4,0};
Point p46 = {5,4,0};
Point p47 = {6,4,0};
Point p48 = {7,4,1};

Point p49 = {4,7,0}; //if left
Point p50 = {5,7,0};
Point p51 = {6,7,0};
Point p52 = {7,7,0};
Point p53 = {4,6,0};
Point p54 = {5,6,0};
Point p55 = {6,6,1};
Point p56 = {7,6,0};
Point p57 = {4,5,0};
Point p58 = {5,5,1};
Point p59 = {6,5,0};
Point p60 = {7,5,1};
Point p61 = {4,4,1};
Point p62 = {5,4,0};
Point p63 = {6,4,0};
Point p64 = {7,4,0};
  
Point ne[64] = {p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40,p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60,p61,p62,p63,p64};




void setup ()
{
MeggyJrSimpleSetup(); 
}

void loop ()
{
  
for (int i = 0; i < 16; i++)
  {
    DrawPx(ne[i].x,ne[i].y,ne[i].color);
  }
  
DisplaySlate();
}

void MovePlayer ()
{
  
}

void MoveMaze ()
{
  
}

void LevelUp ()
{
  
}

void winning ()
{
  
}

