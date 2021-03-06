/*
This is the class for the menu at the 
beginning of the program
*/
class Menu
{
  float bWidth = 160;
  float bHeight = 80;
  float x = width/2-bWidth/1.5;
  float y = height/2;
  float x2 = width/2+bWidth/1.5;
  float y2 = height/2;
  
  float theta2;
  float theta;
  
  float xline = 1;
  float yline = 1;
  
  int cont=2;
  int cont2=2;
  
  public void drawMenu()
  {
      color1=color(70,247,201);
      //draw background moving line x
      stroke(color1);
      line(xline,0,xline,height);
      xline+=cont;
      if (xline>width || xline<0)
      {
        cont=cont*(-1);
      }
      //draw background moving line y
      stroke(color1);
      line(0,yline,width,yline);
      yline+=cont2;
      if (yline>height || yline<0)
      {
        cont2=cont2*(-1);
      }
      
    //outer moving circle
    stroke(color1);
    strokeWeight(3);
    fill(0);
    ellipse(width/2,height/2,700,700);
    
    pushMatrix();
    theta2 = theta2 - 0.015f;
    float c2 = theta2;
    translate(width/2, height/2);
    rotate(c2);
    noStroke();
    fill(0);
    rect(0,0,720,150);   
    popMatrix();
    
    stroke(color1);
    strokeWeight(2);
    fill(0);
    ellipse(width/2,height/2,650,650);
    
    //inner moving circle
    pushMatrix();
    theta = theta + 0.01f;
    float c = cos(theta);
    translate(width/2, height/2);
    rotate(c);
    noStroke();
    fill(0);
    rect(0,0,670,150);   
    popMatrix();
    
     //title text
     textFont(font, 60);
     fill(color1);
     text("Virto UI 2.0.1",width/2,height/3);
     
     //button method to draw the buttons
     drawButton(x,y,bWidth,bHeight,7.0f,"Launch",color1);
     if(mousePressed)
     {
        if(mouseX>x-bWidth/2 && mouseX <x+bWidth/2 && mouseY>y-bHeight/2 && mouseY <y+bHeight/2)
        {
          println("Program Launching!");
          launch=true;
          //move onto ui screen
        }
     }
     drawButton(x2,y2,bWidth,bHeight,7.0f,"Exit",color1);
     if(mousePressed)
     {
        if(mouseX>x2-bWidth/2 && mouseX <x2+bWidth/2 && mouseY>y2-bHeight/2 && mouseY <y2+bHeight/2)
        {
          println("Exiting!");
          exit();
          //exit program
        }
     }
  }//end drawMenu
  
}//end class Menu