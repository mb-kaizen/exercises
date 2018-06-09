/*
Write a function called "findShortestOfOfThreeWords".

Given 3 strings, "findShortestOfOfThreeWords" returns the shortest of the given strings.

Notes:
* If there are ties, it should return the first word in the parameters list.

var output = findShortestOfOfThreeWords('a', 'two', 'three');
console.log(output); // --> 'a'
*/

function findShortestOfOfThreeWords(word1, word2, word3) {
  // your code here
  var arr = [word1, word2, word3];
  var shortest = word1;
  
  for (var i = 1; i < arr.length; i++){
    if (arr[i].length < shortest.length){
      shortest = arr[i];
    }
  }
  return shortest;
}