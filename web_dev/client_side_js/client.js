var heading = document.getElementsByTagName("h1")[0];
var changeColor = function(color) {
  heading.style.color = color;
};

changeColor("green");

// the below function is not timing out in every loop
// var colorsArr = ["blue", "red", "green", "black", "purple", "blue", "green"];
// for (var i = 0; i < colorsArr.length; i ++) {
//   setTimeout(function() {
//     console.log("hello");
//   }, 1000);
// }

var form = document.getElementById("firstname");

form.onfocus = function() {
  var node = document.createElement("H3");
  var textnode = document.createTextNode("Now you see me!");
  node.appendChild(textnode);
  document.body.appendChild(node);
};

var button = document.getElementById("button-reveal")
button.onclick = function() {
  var gif = document.getElementById("birthday-gif")
  gif.style.display = "block";
}