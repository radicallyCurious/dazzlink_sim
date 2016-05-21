/*
*Luc Pitre
*20 May 2016
*Dazzlink Flat simulator, no layers
*/

//GLOBAL VARIABLES
Dazzlink[] link = new Dazzlink[100];
int linkCount = 0;
String input = "";


//MAIN FUNCTIONS
void setup(){
  
  size(600, 600, P2D);
  stroke(0);
  fill(255);
  background(200, 66, 255);
  //link[0] = new Dazzlink("stick", 11);
  
}//end setup()

void draw(){
  
  
  
}//end draw()

void keyPressed(){
  
  /*switch(key){
    case 1:
      createStick(1);
      break;
    default:
      break;
  }//end switch statement*/
  
  if( key >= '0' && key <= '9' ){
    input+=char(key);
    println( "The key entered was: " + char(key) );
    println( "The current input is: " + input );
    if( abs( int( input ) ) > 100 ){
      println( "Whoops! That's too many digits. Let's ignore that last one." );
      input = input.substring(  0, input.length()-1 );
      println( "The current input is: " + input );    
    }
  } 
  else if( key == '-' && input.equals( "" ) ){
    input+='-';
    println( "The key entered was: " + char(key) );
    println( "The current input is: " + input );
  } 
  else if( key == BACKSPACE && input.length() > 0 ){
    println( "Didn't like that last key you pressed, huh? Ok, we'll get rid of it for you." );
    input = input.substring(  0, input.length()-1 );
    println( "The current input is: " + input );
  } 
  else if (key == RETURN || key == ENTER){
    int finalInput = int( input );
    
    switch(finalInput){
      case 11:
        createStick(11);
        break;
      case 7:
        createStick(7);
        break;
      case 6:
        createStick(6);
        break;
      case 5:
        createStick(5);
        break;
      case 4:
        createStick(4);
        break;
      case 3:
        createStick(3);
        break;
    }
    
    println( "Input entered is: " + finalInput );
    input = "";
  }
  
}//end keyPressed()

//FUNCTION DEFINITIONS
void createStick(int h){
  link[linkCount] = new Dazzlink("stick", h);
  linkCount++;
}//end createStick()
