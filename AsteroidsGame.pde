// Spaceship.pde

class Spaceship extends Floater {

  boolean isAccelerating = false; // Flag to track acceleration state
  
  // Constructor to initialize the spaceship
  Spaceship() {
    super();  // Initialize inherited variables from Floater
    pos.x = width / 2;   // Start at the center of the screen
    pos.y = height / 2;
    velocity.set(0, 0);
    rotation = -HALF_PI;  // Default facing upward (in radians)
  }

  // Show the UFO-shaped spaceship
  void show() {
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(rotation);

    // UFO body (disk shape)
    fill(200, 200, 255);  // Light blue color for the body
    stroke(255);
    ellipse(0, 0, 80, 30);  // Main body of the UFO (ellipse)

    // UFO top dome (dome-like structure on top of the disk)
    fill(255, 0, 0);   // Red color for the dome
    ellipse(0, -15, 60, 25);  // Top dome of the UFO

    // UFO lights on the bottom (optional detail)
    fill(255, 255, 0);  // Yellow lights for the UFO bottom
    ellipse(-30, 15, 10, 10);  // Left light
    ellipse(30, 15, 10, 10);   // Right light

    popMatrix();
  }

  // Move the spaceship based on velocity
  void move() {
    pos.add(velocity);  // Apply velocity to position

    // Wrap around screen edges
    if (pos.x < 0) pos.x = width;
    if (pos.x > width) pos.x = 0;
    if (pos.y < 0) pos.y = height;
    if (pos.y > height) pos.y = 0;
  }

  // Turn spaceship left
  void turnLeft() {
    rotation -= 0.1;  // Rotate left
  }

  // Turn spaceship right
  void turnRight() {
    rotation += 0.1;  // Rotate right
  }

  // Accelerate spaceship forward
  void accelerate() {
    if (isAccelerating) {
      float acceleration = 0.1;  // Define how much the spaceship accelerates
      velocity.add(PVector.fromAngle(rotation).mult(acceleration));  // Move in the direction it's facing
    }
  }

  // Hyperspace: Random position and direction
  void hyperspace() {
    pos.x = random(width);  // Random x position
    pos.y = random(height); // Random y position
    rotation = random(TWO_PI);  // Random rotation direction (angle)
    velocity.set(0, 0);  // Stop the movement temporarily
  }
}
