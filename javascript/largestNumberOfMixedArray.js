/*
Write a function called "getLargestNumberAmongMixedElements". 

Given any array, "getLargestNumberAmongMixedElements" returns the largest number in the given array.

Notes:
* The array might contain values of a type other than numbers.
* If the array is empty, it should return 0.
* If the array contains no numbers, it should return 0.

var output = getLargestNumberAmongMixedElements([3, 'word', 5, 'up', 3, 1]);
console.log(output); // --> 5
*/

function getLargestNumberAmongMixedElements(arr) {
  // your code here
  var largest = undefined;
  
  for (var i = 0; i < arr.length; i++){
    if (isNaN(arr[i]) === false) {
      if (largest === undefined){
        largest = arr[i];
      } else if (arr[i] > largest){
        largest = arr[i];
      }
    }
  }
  if (largest === undefined){
    return 0;
  } else {
  return largest;
  }
}