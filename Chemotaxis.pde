void setup() {
  size(600, 400);
  bob = new Bee[200];
  for (int i=0; i<bob.length; i++) {
    bob[i]=new Bee();
  }
}

void draw() {
  background(46, 178, 170);
  for (int i=0; i<bob.length; i++) {
    bob[i].swim();
    bob[i].show();
  }
}

Bee [] bob;

class Bee {
  int myX, myY, mySize, myColor;
  Bee() {
    myX=(int)(Math.random()*600);
    myY=(int)(Math.random()*400);
    mySize=(int)(Math.random()*15)-5;
    myColor=color(153, 0, 0);
  }

  void show() {
    fill(myColor);
    ellipse(myX, myY, mySize+3, mySize);
  }

  void swim() {
    myX=myX+5;
    if (myX>600) {
      myX=0;
    }
    myY=myY+(int)(Math.random()*5)-2;
  }
}
