// Star.pde

class Star {
  PVector pos;
  float speed;
  
  // Constructor to initialize the star
  Star() {
    pos = new PVector(random(width), random(height));  // Random starting position
    speed = random(1, 5);  // Random speed for falling stars
  }

  // Show the star
  void show() {
    fill(255);  // White color for stars
    noStroke();
    ellipse(pos.x, pos.y, 2, 2);  // Draw the star
  }

  // Move the star down the screen
  void move() {
    pos.y += speed;  // Move down by speed value

    // If the star goes off screen, reset it to the top
    if (pos.y > height) {
      pos.y = 0;
      pos.x = random(width);  // Reset to a random x position
    }
  }
}
