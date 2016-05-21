/*
*Luc Pitre<pitreluc@gmail.com>
*20 May 2016
*classes for dazzlink flat simulator
*/

class Dazzlink{
  
  int holes;//how many holes does the stick have?
  String type;//type of link:stick, big square, little circle, etc.

  
  Dazzlink(String t, int h){
    
    holes = h;
    PShape[] hole = new PShape[holes];
    PShape link;
    PShape outline;
    type = t;
    
    //creaitng dazzlink as shape, need to do this to redraw the shape as we change layers
    link = createShape(GROUP);
    boolean circling = true;
    float space = 15;
    
    for(int i = 0; i < holes; i++){
      //hole[i]=createShape(ELLIPSE, ((width/4)+space*i), height/2, 10, 10);
      hole[i]=createShape(ELLIPSE, ((mouseX)+space*i), mouseY, 10, 10);
    }//end hole run through for loop
    //outline = createShape(RECT, mouseX/4-10, (height/2-5), (holes+1)*space, 20);
    outline = createShape(RECT, mouseX - 10, mouseY - 5, (holes+1)*space, 20);
    
    link.addChild(outline);
    for(int i = 0; i < holes; i++){
      link.addChild(hole[i]);
    }//end addChild for loop for holes
    
    //translate(mouseX, mouseY);
    shape(link);
}//end constructor
  
}//end dazzlink class
