int arraySize = 5000;

float []xar = new float[arraySize];
float []yar = new float[arraySize];

float radius,angle;

void setup(){
  size(770,770);  
  radius = 0;  angle = 0;
}

void draw(){
  
  showLabel();
  registerArray();
  showArray(); 
  
}

void registerArray(){
  translate(width/2,height/2);
  
  for(int i=0;i<arraySize;i++){
  
    xar[i]=radius*cos(angle);
    yar[i]=radius*sin(angle);
   
    radius+=(0.1+map(mouseX,0,width,-2,3.5));
    angle+=(0.1+mouseY/10);
  }
}

void showArray(){
  for(int i=0;i<arraySize;i++){
    point(xar[i],yar[i]);
  }
  radius = 0;  angle = 0;
}

void showLabel(){
  translate(0,0);
  background(0); fill(255); stroke(255);  strokeWeight(2.8);
  text(map(mouseX,0,width,0,10),width -50,height-20); 
  text(mouseY/10,width -45,height-5);
}

void keyPressed(){
 if(key == CODED){
   if(keyCode == RIGHT){
     saveFrame("Pattern-######.png");
      println("PhotoCaptured");
   }
 }
}