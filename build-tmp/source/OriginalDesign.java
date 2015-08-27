import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

float smileLeft = 7*PI/8;
float smileRight = PI/8;
float armLeftX = 40;
float armLeftY = 160;

public void setup()
{
	size(200, 500);
	background(255, 255, 255);
}
public void draw()
{
	drawFace();
	smileLeft = smileLeft + .01f;
	smileRight = smileRight - .01f;
	// ^ makessmile bigger
	if(smileLeft > PI) {
		smileLeft = 7*PI/8;
	}
	if(smileRight < 0) {
		smileRight = PI/8;
	}
	// makes smile move
	drawBody();
	/*
	if(armLeftY < 80) {
		armLeftY = armLeftY +1;
	} 
	if(armLeftY > 80) {
		armLeftY = armLeftY -1;
	}
	*/
}
public void drawFace()
{
	background(255, 255, 255);
	strokeWeight(1);
	stroke(0, 0, 0);
	fill(255, 255, 0);
	ellipse(100, 50, 80, 80);
	arc(100, 50, 60, 60, smileRight, smileLeft);
	fill(0, 0, 0);
	ellipse(85, 40, 10,15);
	ellipse(115, 40, 10,15);
}
public void drawBody()
{
	strokeWeight(1);
	stroke(0, 0, 0);
	line(100, 90, 100, 300);
	// ^ torso
	line(100, 120, armLeftX, armLeftY);
	line(100, 120, 160, 160);
	// ^ arms
}









  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
