function getElementsGreaterThan10AtProperty(obj, key) {
  // your code here
  var arr = [];
  
  if (obj[key] === undefined){
    return arr;
  } else {
      for (var i = 0; i < obj[key].length; i++){
        if (obj[key][i] > 10){
          arr.push(obj[key][i]);
        }
      }
    }
  return arr;
}