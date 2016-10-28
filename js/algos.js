/* 
Release 0

Goal: Find the largest string in an array
Input: array
Output: String 

- let largestString = largestString found so far(starts as empty string)
- loop through each string in the array
  - if the length of the current string is greater than the length of the largest string
    - set largestString equal to the current string
- return the largestString

__________________________________

Release 1

Goal: check to see if two objects contain the same key-value pair
input: two objects
output: true if there's a match, false if there is no match

- let foundMatch initialize as false
- loop through the keys of the first object
  - if object 1 at that key matches object 2 at that key(if object 2 does not contain the key it returns false)
    - set foundMatch equal to true
    - break the loop
- return foundMatch

____________________________________

Release 2

Goal: generate an array of strings from 1-10 characters with a user defined length
Input: an integer
Output: an array of strings with the length of that integer

- declare a method genArray that takes in an number
  - for that number of times
      - push a randomString onto the array
  - return the array

- declare a method randomString that takes in a number(max number of chars)
  - let string equal the final random string(initializes as "")
  - let alphabet = "abcdefghijklmnopqrstuvwxyz"
  - for a random number of times(1-10)
    - add a character at a random index(1-26) to the string
  - return string

*/


// ----------------- LOGIC

var findLargestStr = function(array) {
  var largestString = "";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > largestString.length) {
      largestString = array[i];
    };
  };
  return largestString
};


var hasMatch = function(object1, object2) {
  var foundMatch = false;
  for (var key in object1) {
    if (object1[key] === object2[key]) {
      foundMatch = true;
      break;
    };
  };
  return foundMatch;
};

var randomString = function(maxNum) {
  var string = "";
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  for (var i = 0; i <= (Math.floor(Math.random() * maxNum)); i ++) {
    string += alphabet[Math.floor(Math.random() * alphabet.length)];
  };
  return string
};

var genArray = function(length) {
  var array = []
  for (var i = length; i > 0; i--) {
    array.push(randomString(10))
  };
  return array
};

// --------------- DRIVER CODE

var arr1 = ['abc', 'abcd', 'abcdef']
console.log(findLargestStr(arr1))

var arr2 = ["long phrase","longest phrase","longer phrase"]
console.log(findLargestStr(arr2))

var obj1 = {name: "albert", age: 19, gender: "male"};
var obj2 = {gender: "male", name: "Bobby", age: 25};
console.log(hasMatch(obj1, obj2)); // returns true


obj1 = {name: "albert", age: 19, gender: "male"};
obj2 = {gender: "female", name: "Jennifer", age: 25};
console.log(hasMatch(obj1, obj2)); // returns false

console.log("__________________________________________\n");

for (var i = 0; i <=10; i++) {
  var array = genArray(4)
  console.log(array);
  console.log(findLargestStr(array));
  console.log("\n")
};