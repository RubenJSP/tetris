var tabla = [];
var data = getData();
var piezas =[];
void setup(){
  size(1261,1000);
  crearMatriz();
}

var tablero = [["0","","","","","","","","","","","","","","","","","1"],
["2","3","","","","","","","","","","","4","5","6","7","8","9"],
["10","11","","","","","","","","","","","12","13","14","15","16","17"],
["18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35"],
["36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53"],
["54","55","","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85"],
["86","87","","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117"]];
Elemento actual;
let created = false;
let cX,cY;
void draw(){
  background(255);
  if(!created){
    llenarMatriz();
    actual = piezas[0];
    cX = actual.x;
    cY = actual.Y;
    created = true;
  }
  pintarTabla();  
  actual.paint();
  actual.move();
  actual.setVisible();
 // getElement(mouseX,mouseY);
  text("X: " + actual.x + "" + " y: " + actual.y, 1000,50)
  
}

void mouseClicked(){
}

void keyPressed(){
  if(keyCode==LEFT)actual.x-=actual.h;
  if(keyCode==RIGHT)actual.x+=actual.h;
  if(keyCode == UP)getElement((actual.x)+actual.h,actual.y);
  if(key == 'w') actual.y-=actual.h;


}

void crearMatriz(){
  for(var i =0;i<7;i++){
    tabla[i] = new Array(18);
  }

}

void pintarTabla(){
  for(var i = 0;i<7;i++){
    for(var j = 0;j<18;j++){
       if(tablero[i][j]!=""){

         tabla[i][j].paint();
       }
    }
  }
}
void llenarMatriz(){
  var desfaseX=0,desfaseY=0,espacio=505,h=70;
  let x=350,y=0;
   //let datos = getData();
  for(var i =0;i<7;i++){
    desfaseY =(i*h);
    for(var j =0;j<18;j++){
      if(tablero[i][j]!=""){
          piezas.push(new Elemento(tablero[i][j],data[tablero[i][j]].simbolo,data[tablero[i][j]].nombre,data[tablero[i][j]].bloque,x,y,h,0,2));
          tabla[i][j] = new Elemento(tablero[i][j],data[tablero[i][j]].simbolo,data[tablero[i][j]].nombre,data[tablero[i][j]].bloque,(j*h),desfaseY+espacio,h,0,0);
      }            
    }
  }
}


void getElement(x,y){
  for(var i=0;i<7;i++){
    for(var j = 0;j<18;j++){
      if(tablero[i][j]!=""){
         Elemento elemento = tabla[i][j];
         if((x>elemento.x && x<=(elemento.x+elemento.h))&&(y>elemento.y && y<=(elemento.y+elemento.h))){
            elemento.setVisible();
            //println(elemento.simbolo);
              //text("SELECTED -> X: " + elemento.x + "" + " y: " + elemento.y, 1000,100)

         }
       }
     

    }
  }
}

class Elemento{
  let h,x,y,dy,dx,nombre,simbolo,numero, visible;
  Elemento(numero,simbolo,nombre,x,y,h,dx,dy){
    this.numero = numero;
    this.simbolo = simbolo;
    this.nombre = nombre;
    this.x = x;
    this.y = y;
    this.h = h;
    this.dx = dx;
    this.dy = dy;
    this.visible = false;
  }
  Elemento(numero,simbolo,nombre,bloque,x,y,h,dx,dy){
    this.numero = numero;
    this.simbolo = simbolo;
    this.nombre = nombre;
    this.bloque = bloque;
    this.x = x;
    this.y = y;
    this.h = h;
    this.dx = dx;
    this.dy = dy;
    this.visible = false;
  }

    void paint(){
      textSize(this.h/3);
      if(this.bloque == "nonmetal"){
            fill(141,185,136)
          }else if(this.bloque == "noble gas"){
            fill(168,201,236)
          }else if(this.bloque == "alkali metal"){
            fill(191,161,197)
          }else if(this.bloque == "alkaline earth metal"){
            fill(232,149,193)
          }else if(this.bloque == "metalloid"){
            fill(214,218,98)
          }else if(this.bloque == "halogen"){
            fill(122,204,200)
          }else if(this.bloque == "metal"||this.bloque == "post-transition metal"){
            fill(255,214,44)
          }else if(this.bloque == "transition metal"){
            fill(252,181,77)
          }
          else
          fill(255);
      rect(this.x+this.dx,this.y,this.h,this.h);
      if(this.visible){
      fill(0)
      textAlign(CENTER);
      text(this.simbolo,(this.h/2)+this.dx+this.x,(this.y)+this.h/2);
      textSize(this.h/5);
      text(parseInt(this.numero)+1,this.x+13+this.dx,this.y+15);
      textSize(this.h/6.55);
      text(this.nombre,(this.h/2)+this.dx+this.x,(this.y)+this.h-10);
      text();
    }
      //this.move();

  }
  void setVisible(){
    this.visible = true;
  }
  void move(){
    if(this.y<930)
      this.y+=this.dy;
  }

}



