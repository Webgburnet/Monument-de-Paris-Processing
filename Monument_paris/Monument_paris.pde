PImage paris, monument;  // la variable monument contient l'image affichée; voir boucle draw().
                         // la variable paris contient la carte de Paris
int carte=0;  // carte==1 : condition pour afficher la carte de Paris en haut à droite
String legend="";

void setup(){
  paris= loadImage("paris.jpg"); //carte de Paris
  monument=paris;
  legend="Carte de Paris";
  size(700,500);
  textSize(15);
}

//fonction booléenne qui détecte si le pointeur est dans la zone d'un monument

boolean est_dans_zone(int x1, int y1, int x2, int y2){
  if (dist(x1,y1,x2,y2)<20){ return true;} 
  else {return false;}
}

//création d'une méthode pointeur qui change le pointeur de la souris suivant la zone de la carte

void pointeur(){
  if (est_dans_zone(210,240,mouseX,mouseY) || est_dans_zone(400,90,mouseX,mouseY) ||
      est_dans_zone(370,220,mouseX,mouseY) || est_dans_zone(120,100,mouseX,mouseY)||
      est_dans_zone(450,130,mouseX,mouseY)){
      cursor(HAND);
    } else { cursor(ARROW);}
}

// sous l'action d'un clique, suivant la location du pointeur, on charge la variable monument d'une image
// et on change la valeur de la variable entière carte 

void mouseClicked(){
  cursor(ARROW);
  if(est_dans_zone(210,240,mouseX,mouseY)){
    monument=loadImage("eiffel.jpg");
    legend="Tour Eiffel";
    carte=1-carte;
  }
  if(est_dans_zone(400,90,mouseX,mouseY)){
    monument=loadImage("sacre_coeur.jpg");
    legend="Sacré coeur";
    carte=1-carte;
  }
  if(est_dans_zone(width-25,20,mouseX,mouseY)){
    monument=paris;
    legend="Carte de Paris";
    carte=1-carte;
  }
  if(est_dans_zone(370,220,mouseX,mouseY)){
    monument=loadImage("louvre.jpg");
    legend="Le Louvre";
    carte=1-carte;
  }
  if(est_dans_zone(120,100,mouseX,mouseY)){
    monument=loadImage("defense.jpg");
    legend="La Défense";
    carte=1-carte;
  }
    if(est_dans_zone(450,130,mouseX,mouseY)){
    monument=loadImage("gare_nord.jpg");
    legend="Gare du Nord";
    carte=1-carte;
  }
  
  //mettre apres cette ligne les instructions pour l'affichage de chaque monument / lieu
  
  
  
  
}
  
void draw(){
  background(255);
  image(monument,20,20,width-40,height-40);
  fill(0);
  textAlign(CENTER);
  text(legend, width/2, 15);
  
  //on affiche la carte de paris en haut à droite et on change le pointeur
  if(carte==1){
    image(paris,width-50,0,50,40);
    if(est_dans_zone(width-25,20,mouseX,mouseY)){
      cursor(HAND);
    }
  }
  else {pointeur();}
  println(mouseX," ",mouseY);
}
