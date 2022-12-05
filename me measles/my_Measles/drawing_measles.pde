float measleX, measleY, measleDiameter;
color measlesColour;
//
void measlesDynamic() {
  //
  //Population Code
  measleDiameter = random(appHeight * 1/100 ,appHeight * 1/60); //smallerDimension required
  int measleRadius= int(measleDiameter) * 1/2;
  measleX = random(rectFaceX+measleRadius, (rectFaceX+rectFaceWidth)-measleRadius);
  measleY = random(appHeight);//smaller Dimension
  nightMode= false;//will change keyboard and mousePressed
  measlesColour=(nightMode==true)? color(0,random(0, 250),0): color(0, random(0,250),185) ;
  measlesColour= color(0,random(0, 250),random (0, 185));
  //most green is range of blue 0-185(i.e, 0,250,185)
  //most blue is range in green 0-250
  noStroke();
  fill(measlesColour);
  ellipse( measleX, measleY, measleDiameter, measleDiameter );
  fill(restWhite);
  stroke(reset);
} //End measlesDynamic
//
//Emd Draw Measles Subprogram
