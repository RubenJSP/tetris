class Elemento{
  let h,x,y,dy,dx,nombre,simbolo,numero, visible,agregado;
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
    this.agregado = false;
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
    this.agregado = false;
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
