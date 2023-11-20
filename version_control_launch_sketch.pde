ArrayList<Particle> particles;

void setup() {
  size(400, 400);
  particles = new ArrayList<Particle>();
}

void draw() {
  background(0);

  for ( int j = particles.size() - 1; j>=0; j--)
  {
    Particle p = particles.get(j);
    p.update();
    p.display();


    if ( p.position.y > 410)
    {
      particles.remove(j);
    }

  }


  if (mousePressed == true) {
    particles.add(new Particle(mouseX, mouseY));
  }
}
