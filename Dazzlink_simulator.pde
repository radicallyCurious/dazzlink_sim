/*
*Luc Pitre<pitreluc@gmail.com>
*DazzLinks Simulator
*20 May 2016
*/

Layer layer1;
  
//GLOBAL VARIABLES


//MAIN FUNCTIONS
void setup(){
  
  size(640, 480);
  layer1 = new Layer("layer1");
  stroke(0);
  String userLayer = layer1.getName();

  
  
}//end setup()

void draw(){
  
  layer1.createLink("stick", 11);
  
}//end draw()


//FUNCTION DEFINTIONS
void keyPressed(){
    switch(key){
      case 'c':
        
        break;
        
    }//end switch
  }//end keyPressed
