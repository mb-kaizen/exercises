/*
Write a function called "getLongestOfThreeWords".

Given 3 words, "getLongestOfThreeWords" returns the longest of three words. 

Notes:
* If there is a tie, it should return the first word in the tie.

var output = getLongestOfThreeWords('these', 'three', 'words');
console.log(output); // --> 'these'
*/

function getLongestOfThreeWords(word1, word2, word3) {
  // your code here
  var arr = [word1, word2, word3];
  var longest = '';
  
  for (var i = 0; i < arr.length; i++){
    if (arr[i].length > longest.length){
      longest = arr[i];
    }
  }
  return longest;
}
