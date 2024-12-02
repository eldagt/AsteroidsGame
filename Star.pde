// Star Class: Creates random stars in the background
class Star {
  private int myX, myY, mySize;
  private int myColor;

  // Constructor: initializes the position, size, and color of the star
  public Star() {
    mySize = (int)(Math.random() * 5);  // Random size between 0 and 5
    myX = (int)(Math.random() * 500);  // Random X position
    myY = (int)(Math.random() * 500);  // Random Y position
    myColor = color((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));  // Random color
  }

  // Method to display the star
  public void show() {
    noStroke();  // No border around the star
    fill(myColor);  // Set the color to the random color
    ellipse(myX, myY, mySize, mySize);  // Draw the star as an ellipse
  }
}
