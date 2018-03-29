


//barrier
//car1
int barrierX=190;
int barrierY=-50;
int barrierW=20;
int barrierH=30;
int barrierSpeed=5;
//car2
int barrierX2=160;
int barrierY2=-150;
//car3
int barrierX3=230;
int barrierY3=-190;

//roadLine
int roadLineX=200;
int roadLineY=50;
//speed of roadLine
int speed=10;

//car
int carX=160;
int carY=360;
int carW=20;
int carH=30;
int move=30;



void setup(){
  size(400,400);
  
  //for reseting 
  roadLineY=0;
  barrierY=-50;
  barrierY2=-150;
  barrierY3=-190;
  carX=160;
  
}
void draw(){
  background(14,237,172); //background color of screen
  //road
  stroke(255);
  strokeWeight(0);
  fill(70,121,106);
  rectMode(CENTER);
  rect(200,0,100,height*2);
  //roadLine
  stroke(255);
  strokeWeight(4);
  fill(255);
  line(roadLineX, roadLineY-20, roadLineX,roadLineY+20);
  line(roadLineX,roadLineY+50,roadLineX,roadLineY+90);//roadLineX=200;int roadLineY=0;int roadLineW=200;int roadLineH=20;
  line(roadLineX,roadLineY+120,roadLineX,roadLineY+160);
  line(roadLineX,roadLineY+190,roadLineX,roadLineY+230);
  line(roadLineX,roadLineY+260,roadLineX,roadLineY+300);
  line(roadLineX,roadLineY+330,roadLineX,roadLineY+370);
  
  //road line movement
  if(frameCount%10==0){
  roadLineY+=speed;
  if(roadLineY==60){
    roadLineY=-20;
  }}
  
  //bariers
  stroke(255);
  strokeWeight(0);
  fill(0);
  rectMode(CENTER);
  rect(barrierX,barrierY,barrierW,barrierH);
  rect(barrierX2,barrierY2,barrierW,barrierH);
  rect(barrierX3,barrierY3,barrierW,barrierH);
  
  //slowing down the speed of the barrier
  //increasing the pixel of the barrier so it can move
  if(frameCount%10==0){
  barrierY+=barrierSpeed;
  barrierY2+=barrierSpeed;
  barrierY3+=barrierSpeed;
    }
     //Main cars
  stroke(0);
  strokeWeight(0);
  fill(210,224,57);
  rectMode(CORNER);
  rect(carX,carY,carW,carH,4,4,0,0);//int carX=160;int carY=360;int carW=20;int carH=30;
  //carGlass
  noStroke();
  strokeWeight(0);
  fill(25,43,64);
  rectMode(CENTER);
  rect(carX+10,carY+10,carW-10,carH-20,2,2,0,0);
  stroke(0);
  strokeWeight(2);
  line(carX+4,carY+20,carX+15,carY+20);
    
    //if car goes off the screen then it will again come from top
    //looping the cars
     if(barrierY==height+40){
     barrierY=-50;
    
   }if(barrierY2==height+40){
     barrierY2=-150;
   
   } if(barrierY3==height+40){
      barrierY3=-190;   
   } 
   //if the barriers hit the car then everything resets
   if((carX==barrierX ||(carX+carW) ==(barrierX+barrierW)) && (barrierY+barrierH)>carY && barrierY<=(carY+carH)){
     carX=160;
     barrierY=-50;
     barrierY2=-150;
     barrierY3=-190;
   } if(carX==barrierX2-10 || (carX+carW)==(barrierX2+barrierW) && (barrierY2+barrierH)>carY && barrierY2<=(carY+carH) ){
     carX=160;
     barrierY=-50;
     barrierY2=-150;
     barrierY3=-190;
   } if((carX==barrierX3-10 || (carX+carW)==(barrierX3+barrierW)) && (barrierY3+barrierH)>carY && barrierY3<=(carY+carH)){
     
     carX=160;
     barrierY=-50;
     barrierY2=-150;
     barrierY3=-190;
   }
   
  
   
  
}
//left right movement of car
void keyPressed(){
    if(key==CODED){
      if(keyCode==RIGHT){
        if(carX<=210){
        carX+=move;}
      }
      if(keyCode==LEFT){
        if(carX>160){
          carX-=move;
        }
      }
    }
}

//to find the pixel on screen
//void mouseClicked(){
//  print("X: ");
//  println(mouseX);
//  print("Y: ");
//  println(mouseY);
//}