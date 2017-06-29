function madLib(verb, adjective, noun) {
  return 'We shall ${verb.toUpperCase()} the ${adj.toUpperCase()}} ${noun.toUpperCase()}.'
}

function isSubstring(searchString, subString) {
  searchString.includes(subString);
}

function fizzBuzz(array){
  const new_array = [];
  array.forEach(function(num) {
  if (num % 3 === 0 && num % 5 !== 0) {
    new_array.push(num);
  }
  else if (num % 5 === 0 && num % 3 !== 0) {
    new_array.push(num);
  }});
  return new_array;
}

function isPrime (number) {
  if (number < 2) {return false;}
  for (let i = 2; i < n; i++){
    if (n % i === 0){
      return false;
    }
  }
  return true;
}
