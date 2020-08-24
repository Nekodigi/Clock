float guideT = 0.01;//guide thickness*2(theta)

void setup(){
  //size(500, 500);
  fullScreen();
  strokeCap(SQUARE);
}

void draw(){
  background(0);
  //draw hand
  noStroke();
  fill(50, 50, 255);
  arc(width/2, height/2, height/1.3, height/1.3, -HALF_PI, map((hour()+minute()/60.+second()/3600.)%12, 0, 12, 0, TWO_PI)-HALF_PI);
  fill(150, 150, 255);
  arc(width/2, height/2, height/2, height/2, -HALF_PI, map(minute()+second()/60., 0, 60, 0, TWO_PI)-HALF_PI);
  fill(200, 200, 255);
  arc(width/2, height/2, height/3, height/3, -HALF_PI, map(second(), 0, 60, 0, TWO_PI)-HALF_PI);
  
  //draw guide
  strokeWeight(height/25);
  noFill();
  stroke(100, 100, 255);
  for(int i=0; i<12; i++){
    float angle = map(i, 0, 12, 0, TWO_PI);
    arc(width/2, height/2, height/1.2, height/1.2, angle-guideT-HALF_PI, angle+guideT-HALF_PI);
  }
  strokeWeight(height/50);
  for(int i=0; i<60; i++){
    float angle = map(i, 0, 60, 0, TWO_PI);
    arc(width/2, height/2, height/1.25, height/1.25, angle-guideT-HALF_PI, angle+guideT-HALF_PI);
  }
  stroke(150, 150, 255);
  strokeWeight(height/100);
  for(int i=0; i<60; i++){
    float angle = map(i, 0, 60, 0, TWO_PI);
    arc(width/2, height/2, height/1.9, height/1.9, angle-guideT-HALF_PI, angle+guideT-HALF_PI);
  }
  stroke(200, 200, 255);
  strokeWeight(height/200);
  for(int i=0; i<60; i++){
    float angle = map(i, 0, 60, 0, TWO_PI);
    arc(width/2, height/2, height/2.95, height/2.95, angle-guideT-HALF_PI, angle+guideT-HALF_PI);
  }
}
