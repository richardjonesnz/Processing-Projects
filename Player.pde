/**
*  A class to represent an image player
*  loadImage code supplied as noted
*
*/
public class Player
{
  private PImage images[]; // array of images the player loads
  private int pw, ph;      // width and height
  private int x, y;  // position on screen
  private float currentImage = 0;
  private int maxImages = 0;
  private float speedAdjust;
  
  public Player()
  {
  }

  public PImage getCurrentImage()
  {
    currentImage = (currentImage + 1*speedAdjust) % maxImages;
    return images[int(currentImage)]; 

  }
  public void setPos(int x, int y)
  { 
      this.x = x; 
      this.y = y;  
  }
  public int getX() { return this.x; }
  public int getY() { return this.y; }
  public int getWidth() { return images[0].width; }
  public int getHeight(){ return images[0].height; }
  public void setSpeed(float s)
  {
    speedAdjust = s;
  }

//The MIT License (MIT) - loadImages
//Copyright (c) 2013 Mick Grierson, Matthew Yee-King, Marco Gillies
//Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
//The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
//THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

 public void loadImages(String stub, String extension, int numImages)
 {
   images = new PImage[0];
   maxImages = numImages;
   for(int i =0; i < numImages; i++)
   {
     PImage img = loadImage(stub+i+extension);
     if(img != null)
     {
       images = (PImage [])append(images,img);
     }
     else
     {
       break;
     }
   }
 }
}
