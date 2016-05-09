// Create a global variable (actually an object) to hold the picture
PImage scene;
int sample1;
int season;
// Runs once
void setup() {

  // Create canvas
  size(800, 500);

  // Load the picture into the scene object 
  //scene = loadImage("fall_forest.jpg");
  //scene = loadImage("fall2.jpg");
  //scene = loadImage("snow.jpg");
  //scene = loadImage("summer_field.jpg");
    
sample1 = get(400, 400);
  // Change colour mode to HSB
  colorMode(HSB, 360, 100, 100, 100);
  
  // No border on shapes drawn
  noStroke();
  
}

// Runs repeatedly
void draw() {

  // Display the contents of the scene object, top-left corner of image at (0, 0)
  image(scene, 0, 0);

  // Make the pixels of the image available for inspect
  loadPixels();

  // Translate current pixel mouse is hovering over into a position in the pixels[] array
  int currentRow = 400;
  int currentColumn = 400;
  int pixelPosition = currentRow * width + currentColumn;
  
  // Get the hue of the pixel the mouse is pointing at
  float currentHue = hue(pixels[pixelPosition]);
    float brightness = brightness(pixels[pixelPosition]);
  textSize(100);
  fill(255,0,100);
  
  if (brightness > 60){
    if (currentHue > 89){
        text("Winter", 100,100);
    }
      }
  if (currentHue > 89){
    if (brightness < 60){
    season=2;
    }
  }
  
    if (season == 2){
      text("Summer", 100,100);
    }
  if (currentHue > 0){
    if (currentHue < 89){
    season=1;
    }
  }
  if (season == 1){
      text("Fall", 100,100);
  }
    
     textSize(12);
  // Report the results
  fill(0);
  text("Hue of current pixel is: " + currentHue, width - 250, 25);
  text(sample1, 100,00);
}