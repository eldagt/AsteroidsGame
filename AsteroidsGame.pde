// Asteroid Class
class Asteroid extends Floater {
  private double rotSpeed;

  // Constructor: initializes the Asteroid with random position, speed, rotation, and shape
  public Asteroid() {
    corners = 6;  // Asteroid will have 6 corners
    xCorners = new int[corners];
    yCorners = new int[corners];
    
    // Define the shape (hexagonal-like)
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;

    // Random initial position and speed
    myCenterX = (int)(Math.random() * 500);
    myCenterY = (int)(Math.random() * 500);
    myColor = color(152, 146, 146);  // Grey color for asteroid
    myPointDirection = (int)(Math.random() * 4) - 2;  // Random rotation direction
    myXspeed = (int)(Math.random() * 0.5) + 1;  // Random horizontal speed
    myYspeed = (int)(Math.random() * 0.5) + 1;  // Random vertical speed
    rotSpeed = (int)(Math.random() * 3) + 1;  // Random rotation speed
  }

  // Method to rotate the asteroid and move
  public void move() {
    turn(rotSpeed);  // Rotate asteroid by its speed
    super.move();    // Move asteroid based on speed and direction
  }

  // Getters for asteroid's center position
  public double getMyCenterX() {
    return myCenterX;
  }

  public double getMyCenterY() {
    return myCenterY;
  }
}
