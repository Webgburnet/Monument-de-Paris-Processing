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
  if (est_dans_zone(210,240,mouseX,mouseY) || est_dans_zone(400,90,mouseX,mouseY)  ||
      est_dans_zone(370,220,mouseX,mouseY) || est_dans_zone(120,100,mouseX,mouseY) ||
      est_dans_zone(450,130,mouseX,mouseY) || est_dans_zone(95,180,mouseX,mouseY)  ||
      est_dans_zone(45,270,mouseX,mouseY)  || est_dans_zone(70,320,mouseX,mouseY)  ||
      est_dans_zone(170,200,mouseX,mouseY) || est_dans_zone(200,150,mouseX,mouseY) ||
      est_dans_zone(265,190,mouseX,mouseY) || est_dans_zone(150,370,mouseX,mouseY) ||
      est_dans_zone(225,310,mouseX,mouseY) || est_dans_zone(280,315,mouseX,mouseY) ||
      est_dans_zone(340,410,mouseX,mouseY) || est_dans_zone(355,290,mouseX,mouseY) || 
      est_dans_zone(240,260,mouseX,mouseY) || est_dans_zone(330,250,mouseX,mouseY) || 
      est_dans_zone(235,110,mouseX,mouseY) || est_dans_zone(330,80,mouseX,mouseY)  || 
      est_dans_zone(415,45,mouseX,mouseY)  || est_dans_zone(490,50,mouseX,mouseY)  || 
      est_dans_zone(590,15,mouseX,mouseY)  || est_dans_zone(565,210,mouseX,mouseY) || 
      est_dans_zone(460,185,mouseX,mouseY) || est_dans_zone(430,115,mouseX,mouseY) || 
      est_dans_zone(370,160,mouseX,mouseY) || est_dans_zone(460,255,mouseX,mouseY) || 
      est_dans_zone(455,280,mouseX,mouseY) || est_dans_zone(395,260,mouseX,mouseY) || 
      est_dans_zone(490,325,mouseX,mouseY) || est_dans_zone(530,345,mouseX,mouseY) || 
      est_dans_zone(575,290,mouseX,mouseY) || est_dans_zone(590,385,mouseX,mouseY) || 
      est_dans_zone(480,380,mouseX,mouseY) || est_dans_zone(480,465,mouseX,mouseY) || 
      est_dans_zone(390,325,mouseX,mouseY) || est_dans_zone(440,330,mouseX,mouseY) || 
      est_dans_zone(480,150,mouseX,mouseY) || est_dans_zone(325,155,mouseX,mouseY) ||
      est_dans_zone(225,170,mouseX,mouseY)){
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
  if(est_dans_zone(95,180,mouseX,mouseY)){
    monument=loadImage("Bois_de_Boulogne.jpg");
    legend="Bois de Boulogne";
    carte=1-carte;
  }
  if(est_dans_zone(45,270,mouseX,mouseY)){
    monument=loadImage("Roland-Garros.jpg");
    legend="Roland Garros";
    carte=1-carte;
  }
  if(est_dans_zone(70,320,mouseX,mouseY)){
    monument=loadImage("Parc_des_Princes.jpg");
    legend="Parc des princes";
    carte=1-carte;
  }
  if(est_dans_zone(170,200,mouseX,mouseY)){
    monument=loadImage("Trocadero.jpg");
    legend="Trocadero";
    carte=1-carte;
  }
  if(est_dans_zone(200,150,mouseX,mouseY)){
    monument=loadImage("Arc_de_Triomphe.jpg");
    legend="L'Arc de Triomphe";
    carte=1-carte;
  }
  if(est_dans_zone(225,170,mouseX,mouseY)){
    monument=loadImage("Champs-Elysées.jpg");
    legend="Les Champs Elysées";
    carte=1-carte;
  }
  if(est_dans_zone(265,190,mouseX,mouseY)){
    monument=loadImage("Place_de_la_Concorde.jpg");
    legend="Place de la concorde";
    carte=1-carte;
  }
  if(est_dans_zone(150,370,mouseX,mouseY)){
    monument=loadImage("Parc_des_expositions.jpg");
    legend="Parc des expositions";
    carte=1-carte;
  }
  if(est_dans_zone(225,310,mouseX,mouseY)){
    monument=loadImage("Gare_Montparnasse.jpg");
    legend="Gare Montparnasse";
    carte=1-carte;
  }
  if(est_dans_zone(280,315,mouseX,mouseY)){
    monument=loadImage("Tour_Montparnasse.jpg");
    legend="Tour_Montparnasse";
    carte=1-carte;
  }
  if(est_dans_zone(340,410,mouseX,mouseY)){
    monument=loadImage("Parc_Montsouris.jpg");
    legend="Parc Montsouris";
    carte=1-carte;
  }
  if(est_dans_zone(355,290,mouseX,mouseY)){
    monument=loadImage("Parc_Luxembourg.jpg");
    legend="Parc Luxembourg";
    carte=1-carte;
  }
  if(est_dans_zone(240,260,mouseX,mouseY)){
    monument=loadImage("Les_invalides.jpg");
    legend="Invalides";
    carte=1-carte;
  }
  if(est_dans_zone(330,250,mouseX,mouseY)){
    monument=loadImage("Orsay.jpg");
    legend="Orsay";
    carte=1-carte;
  }
  if(est_dans_zone(235,110,mouseX,mouseY)){
    monument=loadImage("Parc_Monceau.jpg");
    legend="Parc Monceau";
    carte=1-carte;
  }
  if(est_dans_zone(330,80,mouseX,mouseY)){
    monument=loadImage("Moulin_Rouge.jpg");
    legend="Moulin Rouge";
    carte=1-carte;
  }
  if(est_dans_zone(415,45,mouseX,mouseY)){
    monument=loadImage("Montmatre.jpg");
    legend="Montmatre";
    carte=1-carte;
  }
  if(est_dans_zone(490,50,mouseX,mouseY)){
    monument=loadImage("la_Villette.jpg");
    legend="La Villette";
    carte=1-carte;
  }
  if(est_dans_zone(590,15,mouseX,mouseY)){
    monument=loadImage("Roissy.jpg");
    legend="Aéroport Roissy";
    carte=1-carte;
  }
  if(est_dans_zone(565,210,mouseX,mouseY)){
    monument=loadImage("Cimetière_du_Père-Lachaise.jpg");
    legend="Cimetière du Père Lachaise";
    carte=1-carte;
  }
  if(est_dans_zone(460,185,mouseX,mouseY)){
    monument=loadImage("Republique.jpg");
    legend="République";
    carte=1-carte;
  }
  if(est_dans_zone(430,115,mouseX,mouseY)){
    monument=loadImage("Gare_Saint-Lazare.jpg");
    legend="Gare Saint-Lazare";
    carte=1-carte;
  }
  if(est_dans_zone(370,160,mouseX,mouseY)){
    monument=loadImage("Beaubourg.jpg");
    legend="Beaubourg";
    carte=1-carte;
  }
  if(est_dans_zone(460,255,mouseX,mouseY)){
    monument=loadImage("Bastille.jpg");
    legend="Bastille";
    carte=1-carte;
  }
  if(est_dans_zone(455,280,mouseX,mouseY)){
    monument=loadImage("Place_des_Vosges.jpg");
    legend="Place des Vosges";
    carte=1-carte;
  }
  if(est_dans_zone(395,260,mouseX,mouseY)){
    monument=loadImage("Notre_Dame.jpg");
    legend="Notre Dame";
    carte=1-carte;
  }
  if(est_dans_zone(490,325,mouseX,mouseY)){
    monument=loadImage("Gare_de_Lyon.jpg");
    legend="Gare de Lyon";
    carte=1-carte;
  }
  if(est_dans_zone(530,345,mouseX,mouseY)){
    monument=loadImage("Bercy.jpg");
    legend="Bercy";
    carte=1-carte;
  }
  if(est_dans_zone(575,290,mouseX,mouseY)){
    monument=loadImage("Nation.jpg");
    legend="Nation";
    carte=1-carte;
  }
  if(est_dans_zone(590,385,mouseX,mouseY)){
    monument=loadImage("Château_de_Vincennes.jpg");
    legend="Château de Vincennes";
    carte=1-carte;
  }
  if(est_dans_zone(480,380,mouseX,mouseY)){
    monument=loadImage("Grande Bibliothèque.jpg");
    legend="Grande Bibliothèque";
    carte=1-carte;
  }
  if(est_dans_zone(480,465,mouseX,mouseY)){
    monument=loadImage("Orly.jpg");
    legend="Aéroport d’Orly";
    carte=1-carte;
  }
  if(est_dans_zone(390,325,mouseX,mouseY)){
    monument=loadImage("Panteón.jpg");
    legend="Pantéon";
    carte=1-carte;
  }
  if(est_dans_zone(440,330,mouseX,mouseY)){
    monument=loadImage("Gare_d'Austerlitz.jpg");
    legend="Gare d’Austerlitz";
    carte=1-carte;
  }
  if(est_dans_zone(480,150,mouseX,mouseY)){
    monument=loadImage("Gare_de_l'est.jpg");
    legend="Gare de l’Est";
    carte=1-carte;
  }
  if(est_dans_zone(325,155,mouseX,mouseY)){
    monument=loadImage("Opéra.jpg");
    legend="Opéra";
    carte=1-carte;
  }
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
