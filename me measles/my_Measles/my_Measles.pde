//Global Varibles
int appWidth, appHeight;
int reset=1;
color restWhite;
Boolean nightMode=false;//Basic Night Mode only changes measeles
//
void setup() { 
  //Display & Orientation
  size(600, 400); 
  displayOrientation();
  appWidth = width;
  appHeight = height;
  //
  population();
  //Theme: i.e. Face (will work in portrait and landscape)
  faceSetup();
  //Background Image (could be in draw too)
}//End setup
//
void draw() {
  //OS System Button
  //Start Button | Measles Reset Button
  //Theme: face & measles with different sizes and colours
  measlesDynamic();
  eyes();
  mouth();
  nose();
}//End draw
//
void keyPressed() {
  //KeyBoard Shortcuts
  if(key=='N' | key=='n' ) {
   if (nightMode==false){
     nightMode=true;
   } else {
      nightMode=false;
   }
  }
  println(nightMode);
}//End keyPressed
//
void mousePressed() {
  //OS System Button
  //Start Button
  //Quit Button
  //Night Mode
}//End mousePressed
//
//End MAIN Program
