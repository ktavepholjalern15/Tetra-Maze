#include <MeggyJrSimple.h>    // Required code, line 1 of 2.

struct Point{
  int x;
  int y;
  int color;
};

int xcoord = 7;
int ycoord = 7;

int nwMarker = 0;
int neMarker = 0;
int swMarker = 0;
int seMarker = 0;

Point p1 = {1,4,1};
Point p2 = {1,5,1};
Point p3 = {1,6,1};
Point p4 = {2,6,1};
Point p5 = {3,6,1};

Point p6 = {0,6,1};
Point p7 = {1,6,1};
Point p8 = {2,6,1};
Point p9 = {2,5,1};
Point p10 = {2,4,1};

Point p11 = {0,5,1};
Point p12 = {1,5,1};
Point p13 = {2,5,1};
Point p14 = {2,6,1};
Point p15 = {2,7,1};

Point p16 = {1,7,1};
Point p17 = {1,6,1};
Point p18 = {1,5,1};
Point p19 = {2,5,1};
Point p20 = {3,5,1};// nw quadrant

Point p21 = {4,6,1};
Point p22 = {5,6,1};
Point p23 = {6,6,1};
Point p24 = {6,5,1};
Point p25 = {6,4,1};

Point p26 = {5,7,1};
Point p27 = {5,6,1};
Point p28 = {5,5,1};
Point p29 = {6,5,1};
Point p30 = {7,5,1};

Point p31 = {4,6,1};
Point p32 = {5,6,1};
Point p33 = {6,6,1};
Point p34 = {6,5,1};
Point p35 = {6,4,1};

Point p36 = {4,5,1};
Point p37 = {5,5,1};
Point p38 = {6,5,1};
Point p39 = {6,6,1};
Point p40 = {6,7,1};//ne quadrant

Point p41 = {1,3,1};
Point p42 = {1,2,1};
Point p43 = {1,1,1};
Point p44 = {2,1,1};
Point p45 = {3,1,1};

Point p46 = {1,0,1};
Point p47 = {1,1,1};
Point p48 = {1,2,1};
Point p49 = {2,2,1};
Point p50 = {3,2,1};

Point p51 = {0,2,1};
Point p52 = {1,2,1};
Point p53 = {2,2,1};
Point p54 = {2,1,1};
Point p55 = {2,0,1};

Point p56 = {0,1,1};
Point p57 = {1,1,1};
Point p58 = {2,1,1};
Point p59 = {2,2,1};
Point p60 = {2,3,1};//south- west quadrant points

Point p61 = {4,1,1};
Point p62 = {5,1,1};
Point p63 = {6,1,1};
Point p64 = {6,2,1};
Point p65 = {6,3,1};
  
Point p66 = {5,3,1};
Point p67 = {5,2,1};
Point p68 = {5,1,1};
Point p69 = {6,1,1};
Point p70 = {7,1,1};

Point p71 = {5,0,1};
Point p72 = {5,1,1};
Point p73 = {5,2,1};
Point p74 = {6,2,1};
Point p75 = {7,2,1};

Point p76 = {4,2,1};  
Point p77 = {5,2,1};
Point p78 = {6,2,1};
Point p79 = {6,1,1};
Point p80 = {6,0,1};//south-east quadrant points
  
  
Point nw[20] = {p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20};

Point ne[20] = {p21,p22,p23,p24,p25,p26,p27,p28,p29,p30,p31,p32,p33,p34,p35,p36,p37,p38,p39,p40};

Point sw[20] = {p41,p42,p43,p44,p45,p46,p47,p48,p49,p50,p51,p52,p53,p54,p55,p56,p57,p58,p59,p60};

Point se[20] = {p61,p62,p63,p64,p65,p66,p67,p68,p69,p70,p71,p72,p73,p74,p75,p76,p77,p78,p79,p80};

void setup()                    // run once, when the sketch starts
{
  MeggyJrSimpleSetup();      // Required code, line 2 of 2.
  Serial.begin(9600);
}

void loop()                     // run over and over again
{
  
  DrawPx(xcoord, ycoord, 3);
  drawNW();  // Draw the north-west quadrant
  drawNE();  // Draw the north-east quadrant
  drawSW();  // Draw the south-west quadrant
  drawSE();  // Draw the south-east quadrant
  DisplaySlate();                  // Write the drawing to the screen.
  CheckButtonsPress();
  if (Button_A) // Rotate Right
  { 
    if (xcoord < 4 && ycoord > 3) // this is the north-west quadrant
    {
      nwMarker+=5;
      Serial.print("A Button pressed. nwMarker = ");
      Serial.println(nwMarker);
      if (nwMarker > 19) nwMarker = 0;
    };
    
    if (xcoord > 3 && ycoord > 3) // this is the north-east quadrant
      {
        neMarker+=5;
        Serial.print("A Button pressed. neMarker = ");
        Serial.println(neMarker);
        if (neMarker > 19) neMarker = 0;
      };
      
    if (xcoord < 4 && ycoord < 4) // this is the south west quadrant
      {
        swMarker+=5;
        Serial.print("A Button pressed. swMarker = ");
        Serial.println(swMarker);
        if (swMarker > 19) swMarker = 0;
      };
      
    if (xcoord > 3 && ycoord < 4) // this is the south east quadrant
      {
        seMarker+=5;
        Serial.print("A Button pressed. seMarker = ");
        Serial.println(seMarker);
        if (seMarker > 19) seMarker = 0;
      }
    
  }
 
  if (Button_B) // Rotate Left
  {
    if (xcoord < 4 && ycoord > 3) // this is the north-west quadrant
      {
        nwMarker-=5;
        Serial.print("B Button pressed. nwMarker = ");
        Serial.println(nwMarker);
        if (nwMarker < 0) nwMarker = 15;
      };
      
    if (xcoord > 3 && ycoord > 3) // this is the north-east quadrant
      {
         neMarker-=5;
         Serial.print("B Button pressed. neMarker = ");
         Serial.println(neMarker);
         if (neMarker < 0) neMarker = 15;
       };
       
    if (xcoord < 4 && ycoord < 4) // this is the south west quadrant
      {
        swMarker-=5;
        Serial.print("B Button pressed. swMarker = ");
        Serial.println(swMarker);
        if (swMarker < 0)swMarker = 15;
      };
      
     if (xcoord > 3 && ycoord < 4) // this is the south east quadrant
       {
         seMarker-=5;
         Serial.print("B Button pressed. seMarker = ");
         Serial.println(seMarker);
         if (seMarker < 0) seMarker = 15;
       };
     
  }
  
if (Button_Up)
  {
    ycoord=ycoord++;
    if (ycoord > 7)
      ycoord = 7;
  };
       
if (Button_Down)
  {
    ycoord = ycoord--;
    if (ycoord < 0)
      ycoord = 0; 
  };
       
if (Button_Right)
  {
    xcoord = xcoord++;
    if (xcoord > 8)
      xcoord = 7;  
  };
       
if (Button_Left)
  {
    xcoord = xcoord--;
    if (xcoord < 0)
      xcoord = 0; 
  };
  
 ClearSlate();                 // Erase drawing
}

void drawNW()
{
  for (int i = nwMarker; i < nwMarker + 5; i++) //draws only the five pts from north-west marker on
  {
    DrawPx(nw[i].x, nw[i].y, nw[i].color);
  }
}

void drawNE()
{
  for (int i = neMarker; i < neMarker + 5; i++) //draws only the five pts from north-east marker on
  {
    DrawPx(ne[i].x, ne[i].y, ne[i].color);
  }
}

void drawSW()
{
  for (int i = swMarker; i < swMarker + 5; i++) //draws only the five pts from south-west marker on
  {
    DrawPx(sw[i].x, sw[i].y, sw[i].color);
  }
}

void drawSE()
{
  for (int i = seMarker; i < seMarker + 5; i++) //draws only the five pts from south-east marker on
  {
    DrawPx(se[i].x, se[i].y, se[i].color);
  }
}
