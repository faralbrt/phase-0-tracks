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

*/


// LOGIC

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


// DRIVER CODE
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