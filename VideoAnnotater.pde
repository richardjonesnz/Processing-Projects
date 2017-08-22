//  

static final int BG = 255;  // Background (white)
static final int SW = 420;  // Screen width and height
static final int SH = 540;

PImage images[]; 
Player movie, spinner;
Maxim maxim;
AudioPlayer player1;
AudioPlayer player2;

void setup()
{
    movie = new Player();
    spinner = new Player();
    movie.setPos(SW/2,SH/4);
    spinner.setPos(SW/2,SH/2);
    movie.loadImages("MyAnimation/movie", ".jpg", 758);
    spinner.loadImages("MySpinner/s0", ".jpg", 15);
    size(SW, SH);
    imageMode(CENTER);
   
   // set up the audio players
   maxim = new Maxim(this);
   player1 = maxim.loadFile("beat1.wav");
   player1.setLooping(true);
   player2 = maxim.loadFile("beat2.wav");
   player2.setLooping(true);
  
   // Background colour
   background(BG);}

void draw()
{
  movie.setSpeed(0.1);
  spinner.setSpeed(0.1);
  image(movie.getCurrentImage(), movie.getX(), movie.getY(),movie.getWidth(), movie.getHeight());
  image(spinner.getCurrentImage(), spinner.getX(), spinner.getY(), spinner.getWidth(), spinner.getHeight());
}

