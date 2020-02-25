
Elemento h ;
void setup(){
  size(1800,1000,P2D);

}

let tablero = [["0","","","","","","","","","","","","","","","","","1"],
["2","3","","","","","","","","","","","4","5","6","7","8","9"],
["10","11","","","","","","","","","","","12","13","14","15","16","17"],
["18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35"],
["36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53"],
["54","55","","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85"],
["86","87","","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117"]];

let x=865,y=0;
let data = getData();
 h  = new Elemento("Mg","Magnesio",x,y,85,0,1.5);

void draw(){
  background(255);
  crearMatriz();
   h.paint();
  //println(data[0].simbolo);
    
   //noLoop();
}

void keyPressed(){
  if(keyCode==LEFT) h.dx-=h.h;
  if(keyCode==RIGHT)h.dx+=h.h;
  if(keyCode==DOWN) h.y+=h.h;
}


void crearMatriz(){
  var desfaseX=0,desfaseY=0,espacio=400,h=85;
  for(var i =0;i<7;i++){
    desfaseY =(i*h);
    for(var j =0;j<18;j++){
      if(tablero[i][j]!=""){
        //println(tablero[i][j]);
        fill(255);
        rect((j*h)+100,desfaseY+espacio,h,h);

      }     
          

    }


  }


}


Elemento crear(){



}

class Elemento{
  let h,x,y,dy,dx,nombre,simbolo;
  Elemento(simbolo,nombre,x,y,h,dx,dy){
    this.simbolo = simbolo;
    this.nombre = nombre;
    this.x = x;
    this.y = y;
    this.h = h;
    this.dx = dx;
    this.dy = dy;
  }
  void paint(){
      textSize(this.h/3);
      fill(255);
      rect(this.x+this.dx,this.y,this.h,this.h);
      fill(0)
      textAlign(CENTER);
      text(this.simbolo,(this.h/2)+this.dx+this.x,(this.y)+this.h/2);
      textSize(this.h/5);
      text(this.nombre,(this.h/2)+this.dx+this.x,(this.y)+this.h-10);
      text();
      this.move();

  }

  void move(){
    if(this.y<920)
      this.y+=this.dy;
  }

}



