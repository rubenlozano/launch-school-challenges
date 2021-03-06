// Write a function that takes one argument, a positive integer, and returns a
// string of alternating 1s and 0s, always starting with 1. The length of the
// string should match the given integer.

function stringy(length) {
  var string = '';

  for (var i = 1; i <= length; i++) {
    string += i % 2;
  }

  return string;
}

stringy(6); // '101010'
stringy(9); // '101010101'
stringy(4); // '1010'
stringy(7); // '1010101'
