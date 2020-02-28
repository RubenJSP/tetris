var tabla = [];
var data = getData();
var piezas =[];
Elemento actual;
var created = false;
var actualIndex = 1;
var tablero = [["0","","","","","","","","","","","","","","","","","1"],
["2","3","","","","","","","","","","","4","5","6","7","8","9"],
["10","11","","","","","","","","","","","12","13","14","15","16","17"],
["18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33","34","35"],
["36","37","38","39","40","41","42","43","44","45","46","47","48","49","50","51","52","53"],
["54","55","","71","72","73","74","75","76","77","78","79","80","81","82","83","84","85"],
["86","87","","103","104","105","106","107","108","109","110","111","112","113","114","115","116","117"]];

void setup(){
  size(1261,1000);
  crearMatriz();
}

void draw(){
  background(255);
  if(!created){
    llenarMatriz();
    //actual = piezas.shift();
    actual = elementoRandom()
    created = true;
  }
  pintarTabla();  
  actual.paint();
  actual.move();
  actual.setVisible();
  textSize(16);
  text("X: " + actual.x + "" + " y: " + actual.y, 1000,50)
  text("W: " + width + "" + " H: " + height, 1000,100)
}

//FUNCIONES

void keyPressed(){
  if(keyCode==LEFT)
    if((actual.x-actual.h)>=0) 
      actual.x-=actual.h;  

  if(keyCode==RIGHT)
    if((actual.x+actual.h*2)<=width)
      actual.x+=actual.h;

  if(keyCode==DOWN)actual.y+=actual.h;

  if(key == ' '){
    let simbol = actual.simbolo;
   if(encontrado((actual.x)+actual.h,actual.y,simbol)){
      actual.agregar()
      actual = elementoRandom()
   }
    else{
      actual.x = 350;
      actual.y = 0;
    }
  }


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
          piezas.push(new Elemento(tablero[i][j],data[tablero[i][j]].simbolo,data[tablero[i][j]].nombre,data[tablero[i][j]].bloque,x,y,h,0,1));
          tabla[i][j] = new Elemento(tablero[i][j],data[tablero[i][j]].simbolo,data[tablero[i][j]].nombre,data[tablero[i][j]].bloque,(j*h),desfaseY+espacio,h,0,0);
      }            
    }
  }
}

function elementoRandom(){
  var index ,length = piezas.length
  for(var i=0  ;i<length;i++){
    index = int(random(length)-1);
    let element = piezas[index]
      
    }
    index = int(random(length)-1);
    return piezas[index];
    
}



function vidas(){

}

function marcador(){

}



function barraProgreso(){

}


function encontrado(x,y,simbolo){
  for(var i=0;i<7;i++){
    for(var j = 0;j<18;j++){
      if(tablero[i][j]!=""){
         Elemento elemento = tabla[i][j];
         if((x>elemento.x && x<=(elemento.x+elemento.h))&&(y>elemento.y && y<=(elemento.y+elemento.h))&&(elemento.simbolo==simbolo)){
            elemento.setVisible();
            return true;
         }
       } 
    }
  }
  return false;
}





