
Elemento h ;
void setup(){
  size(600,800,P2D);
 h  = new Elemento("H",100,100,100,0.5);

}

let data = getData();
void draw(){
  background(255);
  h.paint();
 // rect(100,100,50,50);
  //println(data[0].simbolo);
   //noLoop();
}



class Elemento{
  let ancho,x,y,dy,nombre;
  Elemento(nombre,x,y,h,dy){
    this.nombre = nombre;
    this.x = x;
    this.y = y;
    this.h = h;
    this.dy = dy;
  }
  void paint(){
      textSize(32);
      fill(255);
       rect(this.x,this.y,this.h,this.h);
       fill(0)
      text(this.nombre,(this.x+(this.x/2)-8),(this.y+(this.y/2))+8);
      this.move();

  }

  void move(){
    if(this.y<500)
    this.y+=this.dy;
  }

}



