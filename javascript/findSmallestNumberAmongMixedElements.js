/*
Write a function called "findSmallestNumberAmongMixedElements".

Given an array of mixed elements, "findSmallestNumberAmongMixedElements" returns the smallest number within the given array.

Notes:
* If the given array is empty, it should return 0.
* If the array contains no numbers, it should return 0.

var output = findSmallestNumberAmongMixedElements([4, 'lincoln', 9, 'octopus']);
console.log(output); // --> 4
*/

function findSmallestNumberAmongMixedElements(arr) {
  // your code here
  var num = 0;
  
  for (var i = 0; i < arr.length; i++){
    if (isNaN(arr[i]) === false){
      if (num === 0){
        num = arr[i];
      } else {
        if (arr[i] < num){
          num = arr[i];
        }
      }
    }
  }
  return num;
}
