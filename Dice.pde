let dieNum, counter = 0;

function setup() {
  createCanvas(800, 800);
  noLoop();
  background(255);
}

function draw() {
  background(255);
  noFill();

  for (let i = 50; i <= 700; i += 100) {
    for (let j = 50; j <= 700; j += 100) {
      let george = new Die(j, i);
      george.show();

      // Add up dice values
      if (dieNum == 1) counter++;
      else if (dieNum == 2) counter += 2;
      else if (dieNum == 3) counter += 3;
      else if (dieNum == 4) counter += 4;
      else if (dieNum == 5) counter += 5;
      else counter += 6;
    }
  }

  textSize(32);
  fill(0);
  text("All the dice add up to " + counter, 220, 780);
}

function mousePressed() {
  counter = 0;
  redraw();
}

class Die {
  constructor(x, y) {
    this.myX = x;
    this.myY = y;
  }

  show() {
    noFill();
    rect(this.myX, this.myY, 90, 90);

    let randomNum = int(random(1, 7));
    dieNum = randomNum;
    fill(0);

    // Draw dice dots
    if (randomNum == 1) {
      ellipse(this.myX + 45, this.myY + 45, 20, 20);
    } else if (randomNum == 2) {
      ellipse(this.myX + 30, this.myY + 30, 20, 20);
      ellipse(this.myX + 60, this.myY + 60, 20, 20);
    } else if (randomNum == 3) {
      ellipse(this.myX + 20, this.myY + 20, 20, 20);
      ellipse(this.myX + 45, this.myY + 45, 20, 20);
      ellipse(this.myX + 70, this.myY + 70, 20, 20);
    } else if (randomNum == 4) {
      ellipse(this.myX + 25, this.myY + 25, 20, 20);
      ellipse(this.myX + 65, this.myY + 25, 20, 20);
      ellipse(this.myX + 25, this.myY + 65, 20, 20);
      ellipse(this.myX + 65, this.myY + 65, 20, 20);
    } else if (randomNum == 5) {
      ellipse(this.myX + 25, this.myY + 20, 20, 20);
      ellipse(this.myX + 65, this.myY + 20, 20, 20);
      ellipse(this.myX + 45, this.myY + 45, 20, 20);
      ellipse(this.myX + 25, this.myY + 65, 20, 20);
      ellipse(this.myX + 65, this.myY + 65, 20, 20);
    } else {
      ellipse(this.myX + 25, this.myY + 20, 20, 20);
      ellipse(this.myX + 65, this.myY + 20, 20, 20);
      ellipse(this.myX + 25, this.myY + 45, 20, 20);
      ellipse(this.myX + 65, this.myY + 45, 20, 20);
      ellipse(this.myX + 25, this.myY + 70, 20, 20);
      ellipse(this.myX + 65, this.myY + 70, 20, 20);
    }
  }
}
