private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .5;  
public void setup(){   
  size(700, 700);    
  noLoop(); 
} 
public void draw(){       
  noStroke();
  
  stroke(0); //tree  
  line(350,550,350,460);  //trunk
  drawBranches(350,460,100,3*Math.PI/2);  //branches
} 
public void drawBranches(int x,int y, double branchLength, double angle){
double angle1; 
double angle2;
int endx1;
int endy1;
int endx;
int endy;

angle1 = angle + branchAngle;
angle2 = angle - branchAngle;

branchLength = branchLength * fractionLength;  

endx1 = (int)(branchLength*Math.cos(angle1) +x);
endy1 = (int)(branchLength*Math.sin(angle1) + y);
endx = (int)(branchLength*Math.cos(angle2) + x); 
endy = (int)(branchLength*Math.sin(angle2) + y);

line(x, y, endx1, endy1);
line(x, y, endx, endy);

if(branchLength > smallestBranch){
    drawBranches(endx1, endy1, branchLength, angle1);
    drawBranches(endx, endy, branchLength, angle2);
  }
} 