ArrayList<Box> sponge;
float rot = 0;

void setup()
{
  size(1422, 800, P3D);
  sponge = new ArrayList<Box>();
  sponge.add(new Box(0, 0, 0, 350));
}

void mouseReleased()
{
  ArrayList<Box> next = new ArrayList<Box>();
  for (Box box : sponge) {
    next.addAll(box.Subdivide());
  }
  sponge = next;
}

void draw()
{
  background(0);
  stroke(255, 0, 128);
  fill(128, 0, 255);
  translate(width/2, height/2);
  rotateX(rot);
  rotateY(rot * 0.4);
  rotateZ(rot * 0.1);
  
  for (Box box : sponge)
  {
    box.Draw();
  }
  
  rot += 0.01f;
}
