class Mover{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float mass;
  
  Mover(PVector l, float mas){
    location = new PVector(0,(height/2));
    velocity = l;
    acceleration = new PVector(0,0);
    mass =mas;
    
  }
  
  void applyForce(PVector force){
    PVector f = force.get();
    f.div(mass);
    acceleration.add(f);
    
  }
  
  void display(){
    stroke(0,5);
    //fill(100,197);
    point(location.x,location.y);//,2,2);
  }
  
  void update(){
    location.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  
}
}