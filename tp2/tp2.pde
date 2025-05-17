PImage imagen1, imagen2, imagen3, imagen4, imagen5, imagen6;
int miVariable = 0;
int slide = 1;
PFont boldFont;
PFont miTexto;
float tamFont = 0.5;
int textAlpha= 0;
void setup() {
size(640, 480);
imagen1=loadImage("imagen1.jpg");
imagen2=loadImage("imagen2.jpg");
imagen3=loadImage("imagen3.jpg");
imagen4=loadImage("imagen4.jpg");
imagen5=loadImage("imagen5.jpg");
imagen6=loadImage("imagen6.jpg");
textSize(35);
boldFont = createFont("Arial Bold", 36);  // carga “Arial Bold” a 35 px
  textFont(boldFont);
}
void draw() {
  background(255);
  println(frameCount);
 //pantalla 1 
{if(slide==1) 
 {image(imagen1, 0, 0, 640, 480);
 fill(255);
 text("One Piece es un manga (1997) y anime (1999) creado por Eiichiro Oda que narra la épica búsqueda del tesoro legendario “One Piece” para que Monkey D. Luffy se convierta en el Rey de los Piratas", miVariable, 100, 600, 300);
 } 
 //pantalla 2
 else if(slide==2)
 {image(imagen2, 0, 0, 640, 480);
 fill(0, 0, 100);
 text("Luffy obtiene poderes de goma al comer la Fruta Gomu Gomu, lo que le permite estirarse y absorber impactos, y zarpa con 17 años decidido a vivir la gran aventura",  30, miVariable, 600, 300);
 } 
 //pantalla3
 else if(slide==3)
 {image(imagen3, 0, 0, 640, 480);
 fill(25);
 int startY = height -200;
    int y = startY - miVariable;
 text("Forma la tripulación de los Sombrero de Paja reclutando a guerreros, navegantes y especialistas, cada uno con sueños propios, y juntos exploran mares llenos de islas misteriosas", 30, y, 600, 900);
 }
 //pantalla4
 else if(slide==4)
{image(imagen4, 0, 0, 640, 480);
fill(10);
int startX= width-460;
int X= startX - miVariable;
  text("El mundo de One Piece está gobernado por un corrupto Gobierno Mundial, mientras los piratas se adentran en la Grand Line, enfrentando monstruos marinos y corsarios rivales", X, 100, 600, 300);
}
else if(slide==5)
{image(imagen5, 0, 0, 640, 480);
fill(15);
textSize(tamFont);
text("Las Frutas del Diablo otorgan poderes extraordinarios a cambio de no poder nadar, y el Haki permite sentir presencias, endurecer el cuerpo o absorber golpes con fuerza sobrehumana", 160, 100, 300, 700);
if (frameCount % 4 == 0 && tamFont< 25)
tamFont = tamFont+0.5;
}
else if(slide==6)
{image(imagen6, 0, 0, 640, 480);
textSize(30);
if (frameCount % 4 == 0 && textAlpha < 255) {
      textAlpha += 3;}
fill(150,255,200, textAlpha);
text("Con más de 1 140 capítulos y episodios, One Piece es el manga más vendido de la historia y ha inspirado películas, videojuegos y una exitosa adaptación live-action", 30, 200, 600, 300);
}

 if (frameCount % 570 == 0 && slide < 6) {
  slide = slide + 1;
  miVariable = 0;
  tamFont    = 0.5;
  textAlpha  = 0;
}
  if (frameCount % 4 == 0) {
  miVariable = miVariable + 1;
}
if(frameCount > 3600 && slide == 6 ){
  fill(255);
  rect(450, 350, 180, 60);
  fill(10);
  text("Reiniciar", 475, 395);
}
}
}
  void mousePressed() {
  // Si el clic ocurre dentro del rectángulo (450,350)–(630,410) en la slide 6:
  if (frameCount%10000>3600
      && mouseX >= 450 && mouseX <= 450 + 180
      && mouseY >= 350 && mouseY <= 350 + 60) {
    // Reiniciar todas las variables al estado inicial
    slide      = 1;
    miVariable = 0;
    tamFont    = 0.5;
    textAlpha  = 0;
  }
}
