float rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight;
float faceX, faceY, faceDiameter;
float leftEyeX,leftEyeY,rightEyeX,rightEyeY,eyeDiameter;
int mouthOpen;
float mouthX1, mouthY1, mouthX2, mouthY2;
float xNose1, yNose1, xNose2, yNose2, xNose3, yNose3;
//
void faceSetup() {
  //Face: inscribing a circle in a square ( i.e. logical rectangle)
  //Start from center of display
  rect(rectFaceX, rectFaceY, rectFaceWidth, rectFaceHeight);
  ellipse(faceX, faceY, faceDiameter, faceDiameter);
} //End faceSetup
//
//End Face Subprogram
//
void eyes() {
 leftEye();
 rightEye();
}//End eyes
//
void leftEye() {
  //Logical Rectangle for Left Eye, teacher demo, repeated below
  //Purpose: no measles in eye
  //Easier layering method
  //rect(leftEyeX-eyeDiameter*1/2, leftEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter);
  ellipse(leftEyeX, leftEyeY, eyeDiameter, eyeDiameter);
} //End leftEye
//
void rightEye() {
  //rect(rightEyeX-eyeDiameter*1/2, rightEyeY-eyeDiameter*1/2, eyeDiameter, eyeDiameter)
  ellipse(rightEyeX, rightEyeY, eyeDiameter, eyeDiameter);
} //End rightEye
//End Eyes Subprogram
//
//
void mouth() {
  int mouthWidth = int ( mouthX2 - mouthX1 ); //length=end-beginning
  int mouthHeight = mouthOpen;
  //rect(mouthX1-mouthHeight*1/2, mouthY1-mouthHeight*1/2, mouthWidth+mouthOpen, mouthHeight);
  strokeWeight(mouthOpen); //testing: 100=400/4, mouthOpen=height*1/4
  line(mouthX1, mouthY1, mouthX2, mouthY2);
  strokeWeight(reset); //reset to 1 pixel
  //comparison rect() line only, no caps, no strokeWeight
  //rect(mouthX1, mouthY1, mouthWidth, mouthHeight); 
} //End mouth
//
//End Mouth Subprogram
//
void nose() {
  //rect(xNose2, yNose1, xNose3-xNose2, yNose3-yNose1);
  triangle(xNose1, yNose1, xNose2, yNose2, xNose3, yNose3);
} //End nose
//
//End Nose Subprogram
