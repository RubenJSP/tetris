
Elemento h ;
var tabla = [];
void setup(){
  size(1261,1000);
    crearMatriz();

}

let tablero = [["0","","","","","","","","","","","","","","","","","1"],
["2","3","","","","","","","","","","","4","5","6","7","8","9"],
["10","11","","","","","","","","","","","12","13","14","15","16","17"],
["18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35"],
["36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53"],
["54","55","","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85"],
["86","87","","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117"]];
let data = getData();

let x=350,y=0,h=70;
// h  = new Elemento(1,"Mg","Magnesio",x,y,h,0,2);

void draw(){
  background(255);
 //fill(c);
  //rect(100,100,100,100);
  llenarMatriz()
   //h.paint();
  //println(data[0].simbolo);
   noLoop();
}

void keyPressed(){
  if(keyCode==LEFT) h.dx-=h.h;
  if(keyCode==RIGHT)h.dx+=h.h;
  if(keyCode==DOWN) h.y+=h.h;
}

void crearMatriz(){
  for(var i =0;i<7;i++){
    tabla[i] = new Array(18);
  }

}
void llenarMatriz(){
  var desfaseX=0,desfaseY=0,espacio=505,h=70,index=0,bloc;
  for(var i =0;i<7;i++){
    desfaseY =(i*h);
    for(var j =0;j<18;j++){
      if(tablero[i][j]!=""){
        //bloc = data[tablero[i][j]].bloque;

       // println(data[tablero[i][j]].bloque)
        if(data[tablero[i][j]].bloque == "nonmetal"){
            fill(141,185,136)
          }else if(data[tablero[i][j]].bloque == "noble gas"){
            fill(168,201,236)
          }else if(data[tablero[i][j]].bloque == "alkali metal"){
            fill(191,161,197)
          }else if(data[tablero[i][j]].bloque == "alkaline earth metal"){
            fill(232,149,193)
          }else if(data[tablero[i][j]].bloque == "metalloid"){
            fill(214,218,98)
          }else if(data[tablero[i][j]].bloque == "halogen"){
            fill(122,204,200)
          }else if(data[tablero[i][j]].bloque == "metal"||data[tablero[i][j]].bloque == "post-transition metal"){
            fill(255,214,44)
          }else if(data[tablero[i][j]].bloque == "transition metal"){
            fill(252,181,77)
          }
          else
          fill(255);

        tabla[i][j] = new Elemento(tablero[i][j],data[tablero[i][j]].simbolo,data[tablero[i][j]].nombre,(j*h),desfaseY+espacio,h,0,0);
        tabla[i][j].paint();
        //rect((j*h),desfaseY+espacio,h,h);

      }     
          

    }


  }


}


Elemento crear(){

}

class Elemento{
  let h,x,y,dy,dx,nombre,simbolo,numero;
  Elemento(numero,simbolo,nombre,x,y,h,dx,dy){
    this.numero = numero;
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
      //fill(255);
      rect(this.x+this.dx,this.y,this.h,this.h);
      fill(0)
      textAlign(CENTER);
      text(this.simbolo,(this.h/2)+this.dx+this.x,(this.y)+this.h/2);
      textSize(this.h/5);
      text(parseInt(this.numero)+1,this.x+13,this.y+15);
      textSize(this.h/6.55);
      text(this.nombre,(this.h/2)+this.dx+this.x,(this.y)+this.h-10);
      text();
      //this.move();

  }

  void move(){
    if(this.y<921)
      this.y+=this.dy;
  }

}



