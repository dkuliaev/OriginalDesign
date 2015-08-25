float smileLeft = 7*PI/8;
float smileRight = PI/8;

void setup()
{
	size(500, 500);
	background(255, 255, 255);
}
void draw()
{
	drawFace();
	smileLeft = smileLeft + .01;
	smileRight = smileRight - .01;
	// ^ makessmile bigger
	if(smileLeft > PI) {
		smileLeft = 7*PI/8;
	}
	if(smileRight < 0) {
		smileRight = PI/8;
	}
}
void drawFace()
{
	background(255, 255, 255);
 	size(200, 100);
	fill(255, 255, 0);
	ellipse(100, 50, 80, 80);
	arc(100, 50, 60, 60, smileRight, smileLeft);
	fill(0, 0, 0);
	ellipse(85, 40, 10,15);
	ellipse(115, 40, 10,15);
}
