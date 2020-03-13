class Elemento{
  let h,x,y,dy,dx,nombre,simbolo,numero, visible,agregado,nivel, jugable;

  Elemento(numero,simbolo,nombre,bloque,x,y,h,dx,dy,jugable,nivel){
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
    this.agregado = false;
    this.jugable  = jugable;
    this.nivel = nivel;
  }
  Elemento(numero,simbolo,nombre,bloque,x,y,h,dx,dy,nivel){
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
    this.agregado = false;
    this.nivel = nivel;
    this.jugable = false;
  }

    void paint(){
      textSize(this.h/3);
    if(nivel!=5||this.jugable){
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
          else{
            fill(255);
        }
      }else{
        fill(255)
      }

      rect(this.x+this.dx,this.y,this.h,this.h);
      if(!this.jugable){
        if(this.visible){
          fill(0)
          textAlign(CENTER);
        if(this.nivel!=4){
          if(this.nivel<3){
            text(this.simbolo,(this.h/2)+this.dx+this.x,(this.y)+this.h/2);
            textSize(this.h/5);
            text(this.numero,this.x+13+this.dx,this.y+15);
           }
          textSize(this.h/6.55);
          text(this.nombre,(this.h/2)+this.dx+this.x,(this.y)+this.h-10);
        }
      }
    }else{
      fill(0)
      textAlign(CENTER);        
      text(this.simbolo,(this.h/2)+this.dx+this.x,(this.y)+this.h/2);
      textSize(this.h/5);
      if(this.nivel<3){
        if(this.nivel!=2)
        text(this.numero,this.x+13+this.dx,this.y+15);
        textSize(this.h/6.55);
        text(this.nombre,(this.h/2)+this.dx+this.x,(this.y)+this.h-10);
      }
    }
  }

  void agregar(){
    this.agregado = true;
  }

  void setVisible(){
    this.visible = true;
  }

  void move(){
    if(this.y<1000)
      this.y+=this.dy;
    else{
      this.x = 350
      this.y = 0
    }
  }

}
