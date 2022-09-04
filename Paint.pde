int opciones = 0;
ArrayList<Integer> lineCoordinates = new ArrayList<Integer>();

void setup(){
  
   size(600, 600);
   background(255);
   strokeWeight(2);
   prepareSzene(); 
}

void draw(){
  
}

void cls(){
  background(255);
  prepareSzene();
}

void prepareSzene(){
  
  fill(255);
  
  rect(0, 0, 50, 50);
  point(25, 25);
  
  rect(51, 0, 50, 50);
  point(70, 20);
  point(74, 28);
  point(78, 24);
  point(75, 25);
  point(70, 10);
  point(80, 15);
  
  rect(101, 0, 50, 50);
  line(107, 5, 130, 40);
  
  rect(151, 0, 50, 50);
  rect(161, 10, 30, 30);
  
  rect(201, 0, 50, 50);
  triangle(230,10,220,40,240,40);
  
  rect(251, 0, 50, 50);
  circle(277,25,30);
  //circulo
  
  rect(301, 0, 50, 50);//cls

  rect(351, 0, 50, 50);
  
  rect(401, 0, 50, 50);
  
  fill(0);
  textSize(15);
  text("1", 21, 70); 
  text("2", 71, 70); 
  text("3", 121, 70); 
  text("4", 171, 70);
  text("5", 221, 70);
  text("6", 271, 70);
  text("c", 321, 70);
  text("cls", 315, 30);
  text("s", 371, 70);
  text("save", 361, 30);
}

void keyPressed(){
 
  if( key == 'c' ){
    cls(); 
  }
  
  if( key ==  '1' ){
    opciones = 1;  
  }
  
  if( key == '2' ){
    opciones = 2; 
  }
  
  if( key == '3' ){
    opciones = 3; 
  }
  
  if( key == '4' ){
    opciones = 4; 
  }
  
  if( key == '5' ){
    opciones = 5; 
  }
  
  if( key == '6' ){
    opciones = 6; 
  }
  
  if( key == 's' ){
    opciones = 7;
  }

  println(opciones);
}

void mouseDragged(){
  
  if( opciones == 1 ){
    point(mouseX, mouseY);  
  }
  
  if( opciones == 2 ){
    
    for ( int i = 0; i < 10; i++){
       
      point(mouseX + random( -15, 15 ), mouseY + random( -15, 15 ));
    }
  }
   
}

void mousePressed(){
  
  if( opciones == 3 ){
         lineCoordinates.add(mouseX);
         lineCoordinates.add(mouseY);
         
         if( lineCoordinates.size() > 2 ){
            
           
           line(lineCoordinates.get(0),
                lineCoordinates.get(1),
                lineCoordinates.get(2),
                lineCoordinates.get(3));
           int x2 = lineCoordinates.get(2);
           int y2 = lineCoordinates.get(3);
           lineCoordinates = new ArrayList<Integer>();
           lineCoordinates.add(x2);
           lineCoordinates.add(y2);
         }
  }
  
  if( opciones == 4 ){
      rect(mouseX,mouseY,100,100);
  }
  
  if( opciones == 5 ){
      triangle(mouseX, mouseY, 100, mouseX, mouseY, 100);
  }
  
  if( opciones == 6 ){
      circle(mouseX, mouseY , 100);
  }
  
  if( opciones == 7 ){
      save("imagen.jpg");
  }
  
}
