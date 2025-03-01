private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(640,480);    
	noLoop(); 
} 
public void draw() 
{   
	background(0);   
	stroke(0,255,0);   
	line(320,480,320,380);   
	drawBranches(??,??,??,??);  //will add later 
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	     double angle1 = angle + branchAngle;
  double angle2 = angle - branchAngle;
  
  branchLen = branchLen * fractionLength;
  
  int endingX1 = (int)(branchLen*Math.cos(angle1) + x);
  int endingY1 = (int)(branchLen*Math.sin(angle1) + y);
  int endingX2 = (int)(branchLen*Math.cos(angle2) + x);
  int endingY2 = (int)(branchLen*Math.sin(angle2) + y);
  
  line(x,y,endingX1,endingY1);
  line(x,y,endingX2,endingY2);
    
  if(branchLen > smallestBranch){
    drawBranches(endingX1, endingY1, branchLen-2,angle1+PI/2);
    drawBranches(endingX2, endingY2, branchLen-2, angle2-PI/2);
    
  }
} 
