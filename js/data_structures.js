var colors = ["blue", "green", "purple", "brown"];
var names = ["Ed", "Tom", "Bobby", "Champ"];

console.log("List of colors: " + colors);
console.log("List of names: " + names);

colors.push("yellow");
names.push("Stud");

console.log("\n--------------");
console.log("List of colors: " + colors);
console.log("List of names: " + names);

var horse_color = {};
for (var i = 0; i < names.length; i++) {
  horse_color[names[i]] = colors[i];
}

console.log(horse_color);

// -------------------------------------------------------
function Car(model, isNew, topSpeed) {
  console.log("initializing...");
  this.model = model;
  this.isNew = isNew;
  this.topSpeed = topSpeed;
  this.use = function() {this.isNew = false};
  this.drive = function(distance) {console.log("Your car has traveled " + distance + " miles");};
}

// DRIVER CODE
console.log('--------------');
var mercedes = new Car("S550", true, 160);
console.log(mercedes);
mercedes.use();
console.log("New: "+ mercedes.isNew);

console.log("Another Car...");
var toyota = new Car("camry", true, 140);
toyota.drive(5000);