int numPantalla;
int tiempo;
PImage imagen1;
PImage imagen2; 
PImage imagen3;
PImage imagen4;

void setup(){
  size (640,480);
  numPantalla = 0;
  tiempo = 0;
  frameRate(30);
}

void draw(){
  background (100,19,19);
  
  if (numPantalla == 0) { ///////////////// Autoretrato
  fill(255);
  imagen1 = loadImage("data/Kristoffer_Zetterstrand.jpg");
  background (100,19,19);
  image (imagen1, 100,0,440,480);
  
  textAlign(CENTER,440);
  textSize(30);
  text ("Kristoffer Zetterstrand", 320, 420);
  }
  
  else if (numPantalla == 1) { //////////////////// Niña RGB
  imagen2 = loadImage("data/RGB.jpg");
  background(0);
  image (imagen2,0,0,640,480);
  float y = map(tiempo,0,240,0,500);
  text ("Es un pintor sueco conocido\n principalmente por crear la mayor parte\n de las pinturas de Minecraft",320,y);
  } 
  
  else if (numPantalla == 3){ ////////////////////////////// Luchadores
  imagen3 = loadImage("data/Fighters.jpg");
  background(255);
  image (imagen3,0,0,640,480);
  float x = map(tiempo,0,240,0,700);
  fill(255);
  text ("Sus obras tienen influencia\n del arte antiguo y el renacentista,\n así como de los gráficos de ordenador\n y el modelado 3D",x,240);
  } 
  
  else if (numPantalla == 2){ ////////////////////////////// Caminante
  imagen4 = loadImage("data/Wanderer.jpg");
  background(255,0,3);
  image (imagen4,0,0,640,480);
  textAlign(CENTER,CENTER);
  float opacidad = map(tiempo,0,240,0,255);
  fill(0,opacidad);
  text ("En el año 2012 recibió el premio\n de Arte Marianne y Sigvard Bernadotte",320,180);
  }
  
  else if (numPantalla == 4){ /////////////////////// Fin
  fill(255);
  ellipse (320,240,60,60);
  textAlign(CENTER,CENTER);
  textSize(20);
  fill(0);
  text("Inicio",320,240);
  }
  
  tiempo++;
  if (tiempo>240){
  tiempo = 0;
  numPantalla++;
  if (numPantalla>3){
  numPantalla = 4;
  }
  }
  
}

void mousePressed(){ //////////////// botón de volver al inicio
  if (numPantalla == 4){
  float distancia = dist (320,240,mouseX,mouseY);
  if (distancia < 30) {
  numPantalla = 0;
  }}
}  
