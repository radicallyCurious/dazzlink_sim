//Luc Pitre
//
//20 May 2016

class Dazzlink{
  
  int holes;//how many holes does the stick have?
  String type;//type of link:stick, big square, little circle, etc.
  String layer;//current layer
  
  Dazzlink(String t, int h, String l){
    holes = h;
    type = t;
    layer = l;
    
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
     }//end if
}//end constructor
  
}//end dazzlink class

class Layer{
  
  color col;
  String name;
  Dazzlink[] links;
  int linkCount = 0;
  
  Layer(String n){
    
    name = n;
    col = color(random(255), random(255), random(255));
    background(col);
  }
  
  String getName(){
    return this.name;
  }//end getName
  
  void setName(String n){
    this.name = n;
  }//end setName
  
  void createLink(String t, int h){
    links[linkCount] = new Dazzlink(t, h, this.name);
  }//end setLink
  
}//end Layer class
