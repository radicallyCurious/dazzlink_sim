//Luc Pitre
//
//20 May 2016

class Dazzlink{
  
  int holes;//how many holes does the stick have?
  String type;//type of link:stick, big square, little circle, etc.
  Layer layer;//current layer
  
  Dazzlink(String t, int h, Layer l){
    
    holes = h;
    PShape[] hole = new PShape[holes];
    PShape link;
    PShape outline;
    type = t;
    layer = l;
    
    //creaitng dazzlink as shape, need to do this to redraw the shape as we change layers
    link = createShape(GROUP);
    boolean circling = true;
    float space = 15;
    
    for(int i = 0; i < holes; i++){
      hole[i]=createShape(ELLIPSE, ((width/4)+space*i), height/2, 10, 10);
    }//end hole run through for loop
    outline = createShape(RECT, width/4, (height/2-10), (holes+1)*space, 20);
    
    link.addChild(outline);
    for(int i = 0; i < holes; i++){
      link.addChild(hole[i]);
    }//end addChild for loop for holes
    
    shape(link);
    
    /*
    //original dazzlink creation code
    if(type == "stick"){
      boolean drawing = true;
      float spacing = 15;
      rect(width/4, (height/2-10), (holes+1)*spacing, 20);
      while(drawing){
        for(int i = 1; i <= holes; i++){
          ellipse(((width/4)+spacing*i), height/2, 10, 10);
        }//end for, stop drawing circles
        drawing = false;
      }//end while, stop drawing
     }//end if*/
}//end constructor
  
}//end dazzlink class

class Layer{
  
  color col;
  String name;
  Dazzlink[] links = new Dazzlink[100];
  int linkCount = 0;
  
  Layer(){
    
    
    col = color(random(255), random(255), random(255));
    background(col);
  }
  
  /*String getName(){
    return this.name;
  }//end getName
  
  void setName(String n){
    this.name = n;
  }//end setName
  */
  void createLink(String t, int h, Layer l){
    links[linkCount] = new Dazzlink(t, h, l);
  }//end setLink
  
  int getLinkcount(){
    return this.linkCount;
  }//end getLinkCount
  
}//end Layer class
