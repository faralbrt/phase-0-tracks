// REVERSE A STRING
// Input: 'hello'
// Output: 'olleh'

// PLAN
// create a function called reverse(takes in a word)
// - let the variable word_reversed = ''
// - let the variable index = length of word - 1
// - for each letter at the index
//   - add that letter to word_reversed string
//   - minus the index by one
// -make sure to return the word_reversed string

function reverse(word) {
  var word_reversed = '';
  for (var index = word.length - 1; index >= 0; index--){
    word_reversed += word[index];
  }
  return word_reversed;
}


var albert_rev = reverse('albert');

if ('albert' != albert_rev) {
  console.log(albert_rev);
}
else {
  console.log("You've got a palindrome!!");
}
