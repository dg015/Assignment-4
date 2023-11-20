ArrayList<Particle> particles;

void setup() {
  size(400, 400);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(0);
  for ( int i = particles.size() - 1; i>=0; i--)
  {
    Particle p = particles.get(i);
    p.update();
    p.display();


    if ( p.position.y > 410)
    {
      particles.remove(i);
    }
  }


  if (mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
