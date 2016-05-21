/*
*Luc Pitre<pitreluc@gmail.com>
*DazzLinks Simulator
*20 May 2016
*/
  
//GLOBAL VARIABLES
Layer[] layer = new Layer[100];

int currentLayer = 0;
int highLayer = 0;
int lowLayer = 0;


//MAIN FUNCTIONS
void setup(){
  
  size(640, 480, P2D);
  layer[currentLayer] = new Layer();
  stroke(0);

  layer[currentLayer].createLink("stick", 11, layer[currentLayer]);
  
}//end setup()

void draw(){
  
  
  
}//end draw()


//FUNCTION DEFINTIONS
void keyPressed(){
    switch(key){
      case 'c':
        createDazzlink();
        break;
      case 'u':
        layerUp();
      case 'd':
        layerDown();
        break;
      case 1:
        
    }//end switch
  }//end keyPressed
  
void createDazzlink(){
}

void layerUp(){
  if(currentLayer == highLayer){
    layer[currentLayer+1] = new Layer();
    currentLayer++;
    highLayer++;
  }else{
    currentLayer++;
  }
  drawLayer();
}//end layerUp

void layerDown(){
  if(currentLayer == lowLayer){
    layer[currentLayer-1] = new Layer();
    currentLayer--;
    lowLayer--;
  }else{
    currentLayer--;
  }
  drawLayer();
}//end layerDown

void drawLayer(){
  for(int i = 0; i < layer[currentLayer].getLinkcount(); i++){
    //links[i];
  }
}//end drawLayer
