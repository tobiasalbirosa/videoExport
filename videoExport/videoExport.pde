boolean rec = false;
void setup() {
  // PA QUE NO NOS PESE TANTO EL VIDEITO 
  size(240, 240); // PUEDE VARIAR
  frameRate(12); // PUEDE VARIAR
  surface.setResizable(true); // ESTE ES PARA AJUSTAR LA PANTALLA
}
void draw() {
  background(0);
  // ACA HACEMOS LA MAGIA:
  circle(mouseX, mouseY, width/10);
  /*
    
    
        TU CÓDIGO VA AQUÍ
        
  
        
  */
  
  //INTERFAZ DE LA GRABACION:
  //BOTON:
  rect(width/1.2, height/1.2, width/10, height/10);
  
  //SI TOCO EL BOTON GRABO O DEJO DE GRABAR
  if (rec) {
    saveFrame();
      text("Rec: "+rec,width/1.6, height/1.2);
  }else{
      text("Rec: "+rec,width/1.6, height/1.2);
  }
}
void mouseClicked() {
  if (mouseX > width/1.2 && mouseY > height/1.2 && mouseX < width-width/10 && mouseY < height-height/10) {
    rec = !rec;
    println("Grabando: ", rec);
    println("vos sos un botón");
  } else {
    println("vos no");
  }
}
