float baseH = 30;
float baseX = 30;
float armL1 = 100;
float armL2 = 40;
float armL3 = 60;
float armW1 = 10;
float armW2 = 10;
float armW3 = 10;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float dif = 1.0;


void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(180, 180, 180, 0, 0, -30, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 'e'){
      angle1 = angle1 + dif;
    }
    if(key == 'E'){
      angle1 = angle1 - dif;
    }
    if(key == 's'){
      angle2 = angle2 + dif;
    }
    if(key == 'S'){
      angle2 = angle2 - dif;
    }
    if(key == 'h'){
      l3 = l3 - dif;
    }
    if(key == 'H'){
      l3 = l3 + dif;
    }
  }
  
  //base
  rotateZ(radians(angle0));
  pushMatrix();
  translate(baseX,0,0);
  translate(0,baseH/2,0);
  fill(155);
  box(10,baseH,10);
  
  //1st link
  translate(10,baseH/2-armW1/2,0);
  rotateX(radians(angle1));
  translate(0,0,-armL1/2+armW1/2);
  fill(130);
  box(armW1,armW1,armL1);
  
  //2st link
  translate(-10,0,-armL1/2+armW2/2);
  rotateX(radians(angle2));
  translate(0,armL2/2-armW2/2,0);
  fill(100);
  box(armW2,armL2,armW2);
  translate(0,armL2/2,0);
  fill(100);
  box(armL2*2-15,armW2/2,armW2);
  
  //3nd link
  translate(l3+armL2-10,armW2*3/4+armL3/2,-armW3-10);
  fill(125);
  box(armW3,armL3,armW3);
  translate(0,armW3-40,10);
  fill(125);
  box(10,10,30);
  
  popMatrix();
  
  
  
  //base
  translate(0,baseH/2,0);
  fill(155);
  box(10,baseH,10);
  
  //1st link
  translate(-10,baseH/2-armW1/2,0);
  rotateX(radians(angle1));
  translate(0,0,-armL1/2+armW1/2);
  fill(130);
  box(armW1,armW1,armL1);
  
  //2st link
  translate(10,0,-armL1/2+armW2/2);
  rotateX(radians(angle2));
  translate(0,armL2/2-armW2/2,0);
  fill(100);
  box(armW2,armL2,armW2);
  translate(0,armL2/2,0);
  fill(100);
  box(armL2*2-15,armW2/2,armW2);
  
  //3nd link
  translate(-l3-armL2+10,armW2*3/4+armL3/2,-armW3-10);
  fill(125);
  box(armW3,armL3,armW3);
  translate(0,armW3-40,10);
  fill(125);
  box(10,10,30);
 
  
}
