/* Release 0

Goal: Find the largest string in an array
Input: array
Output: String 

- let largestString = largestString found so far(starts as empty string)
- loop through each string in the array
  - if the length of the current string is greater than the length of the largest string
    - set largestString equal to the current string
- return the largestString
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

// DRIVER CODE
var arr = ['abc', 'abcd', 'abcdef']
console.log(findLargestStr(arr))