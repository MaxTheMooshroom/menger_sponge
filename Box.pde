class Box
{
  PVector pos;
  float size;
  
  Box(float x, float y, float z, float _size)
  {
    pos = new PVector(x, y, z);
    size = _size;
  }
  
  ArrayList<Box> Subdivide()
  {
    ArrayList<Box> boxes = new ArrayList<Box>();
    for (int x = -1; x < 2; x++) {
      for (int y = -1; y < 2; y++) {
        for (int z = -1; z < 2; z++) {
          int sum = abs(x) + abs(y) + abs(z);
          float newSize = size / 3;
          if (sum > 1) {
            boxes.add(new Box(pos.x + x * newSize, pos.y + y* newSize, pos.z + z * newSize, newSize));
          }
        }
      }
    }
    return boxes;
  }
  
  void Draw()
  {
    pushMatrix();
    
    translate(pos.x, pos.y, pos.z);
    box(size);
    
    popMatrix();
  }
  
}
