
class Man {

  PImage head = new PImage();
  PImage corps = new PImage();

  int x;
  int y;
  /*
  prof= "ouvrier"   "cadre"   "designer";
   */
  String origine;
  String prof="";
  int happy;



  Man(int _x, int _y, String _origine, String _prof, int _happy) {
    this.x=_x;
    this.y=_y;
    this.origine=_origine;
    this.prof=_prof;
    this.happy=_happy;

    this.head=loadImage(this.origine+"/head-"+str(this.happy)+".png");
    this.corps=loadImage(this.origine+"/"+this.prof+"/corps-"+(int)random(1,3)+".png");
  }



  void draw() {

    image(head, 50+x, 0+y, 50, 50);
    image(corps, x+27, y-20, 100, 220);
    textAlign(RIGHT);
    text(this.origine, x+60, y);
    text(this.prof, x+60, y+15);
    text(this.happy, x+60, y+30);
  }

}

