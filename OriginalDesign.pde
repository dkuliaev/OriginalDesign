float smileLeft = 7*PI/8;
float smileRight = PI/8;
float armLeftX = 40;
float armLeftY = 160;

void setup()
{
	size(200, 500);
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
	// makes smile move
	drawBody();

	if(armLeftY < 80) {
		armLeftY = armLeftY +1;
	} 
	if(armLeftY > 80) {
		armLeftY = armLeftY -1;
	}
}
void drawFace()
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
void drawBody()
{
	strokeWeight(1);
	stroke(0, 0, 0);
	line(100, 90, 100, 300);
	// ^ torso
	line(100, 120, armLeftX, armLeftY);
	line(100, 120, 160, 160);
	// ^ arms
}









