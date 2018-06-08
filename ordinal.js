var readlineSync = require('readline-sync');

var ordinal = function(digit) {
  var digitNum = digit;
  var lastDigit = digitNum % 10;
  var lastTwoDigits = digitNum % 100;
  
  if (lastTwoDigits > 10 && lastTwoDigits < 20) {
    var yolo = digit + "th";
    return yolo;
  }
  else if (lastDigit === 1) {
    return digit + "st";
  }
  else if (lastDigit === 2) {
    return digit + "nd";
  }
  else if (lastDigit === 3) {
    return digit + "rd";
  }
  else {
    return digit + "th";
  }
}

var input = readlineSync.questionInt("Enter a digit: ");

var value = ordinal(input);
console.log(value);
