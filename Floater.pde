// Floater.pde
class Floater {
  PVector pos;        // Position of the floater
  PVector velocity;   // Velocity of the floater
  float rotation;     // Rotation of the floater
  
  Floater() {
    pos = new PVector(0, 0);
    velocity = new PVector(0, 0);
    rotation = 0;
  }
}
