// Spaceship Class
class Spaceship extends Floater {

  // Constructor: initializes the spaceship with its shape and color
  public Spaceship() {
    corners = 4;  // Spaceship has 4 corners (a rectangle-like shape)
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    // Define the spaceship shape
    xCorners[0] = -8;  // Left side
    yCorners[0] = -8;
    xCorners[1] = 16;  // Right side
    yCorners[1] = 0;
    xCorners[2] = -8;  // Bottom-left
    yCorners[2] = 8;
    xCorners[3] = -4;  // Bottom-right
    yCorners[3] = 0;
    
    myCenterX = 250;  // Initial position at the center of the screen
    myCenterY = 250;
    myPointDirection = 0;  // Facing right initially
    myColor = color(255);  // White color for spaceship
  }

  // Getter and Setter methods for spaceship's properties
  public void setXspeed(double x) {
    myXspeed = x;
  }

  public void setYspeed(double y) {
    myYspeed = y;
  }

  public void setCenterX(int x) {
    myCenterX = x;
  }

  public void setCenterY(int y) {
    myCenterY = y;
  }

  public void setPointDirection(int x) {
    myPointDirection = x;
  }

  public double getMyCenterX() {
    return myCenterX;
  }

  public double getMyCenterY() {
    return myCenterY;
  }

  public double getX() {
    return myCenterX;
  }

  public double getY() {
    return myCenterY;
  }

  public double getPointDirection() {
    return myPointDirection;
  }

  public double getXspeed() {
    return myXspeed;
  }

  public double getYspeed() {
    return myYspeed;
  }
}
