int dieNum, counter;
  void setup()
  {
      background(255,255,255);
      noLoop();
      size(800,800);
     
  }
  void draw()
  { 
     
      background(255,255,255);
      noFill();
      for(int i=50;i<=700;i+=100){
        for(int j=50;j<=700;j+=100){
        Die george= new Die(j,i);
        george.show();
        if(dieNum==1){
          counter++;
        }
        else if(dieNum==2){
          counter+=2;
        }
        else if(dieNum==3){
          counter+=3;
        }
        else if(dieNum==4){
          counter+=4;
        }
        else if(dieNum==5){
          counter+=5;
        }
        else{
          counter+=6;
        }
        System.out.println(dieNum);
        }
      }
      System.out.println(counter);
      textSize(32);
      fill(0);
      text("All the dices add up to "+counter, 220,780);
  }
  void mousePressed()
  {
      redraw();
      counter=0;
  }
  class Die //models one single dice cube
  {
    int myX, myY;
      Die(int x, int y) //constructor
      {
         myX=x;
         myY=y;
         
      }
      void roll()
      {
          //your code here
      }
      void show()
      {
          noFill();
         int randomNum=(int)(Math.random()*6+1);
         rect(myX,myY, 90,90);
         if(randomNum==1){
           fill(0);
           ellipse(myX+45,myY+45,20,20);
           dieNum=1;
         }
         else if(randomNum==2){
           fill(0);
           ellipse(myX+30,myY+30,20,20);
           ellipse(myX+60,myY+60,20,20);
           dieNum=2;
         }
         else if(randomNum==3){
           fill(0);
           ellipse(myX+20,myY+20,20,20);
           ellipse(myX+45,myY+45,20,20);
           ellipse(myX+70,myY+70,20,20);
           dieNum=3;
         }
         else if(randomNum==4){
           fill(0);
           ellipse(myX+25, myY+25,20,20);
           ellipse(myX+65, myY+65,20,20);
           ellipse(myX+25, myY+65,20,20);
           ellipse(myX+65,myY+25,20,20);
           dieNum=4;
         }
         else if(randomNum==5){
           fill(0);
           ellipse(myX+25,myY+20,20,20);
           ellipse(myX+65, myY+20,20,20);
           ellipse(myX+45,myY+45,20,20);
           ellipse(myX+25,myY+65,20,20);
           ellipse(myX+65,myY+65,20,20);
           dieNum=5;
         }
         else{
           fill(0);
           ellipse(myX+25,myY+20,20,20);
           ellipse(myX+65,myY+20,20,20);
           ellipse(myX+25,myY+45,20,20);
           ellipse(myX+65,myY+45,20,20);
           ellipse(myX+25,myY+70,20,20);
           ellipse(myX+65,myY+70,20,20);
           dieNum=6;
         }
       
      }
  }
