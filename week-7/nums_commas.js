// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Trevor and Abe

// Pseudocode
// Create a variable and set it equal to a function with one argument.
// Turn integer into a string
// Slice off last 3 digits
// Put those digits in a new variable with a comma
// keep iterating through until there is less than 3 digits.
// print new variable


// Initial Solution

// var add_commas = function (number) {
//   var number_string = number.toString();

//   var sliced_string = number_string.slice(-3);
//   var index = -3;
//   var final_string = "";
//   while (number_string.length + index > 0) {
//     index += -3;

//     var next_3 = number_string.slice(index, index + 3);
//     final_string = next_3 + "," + final_string;
//     var answer = final_string + sliced_string
//   };



//   console.log(answer);

// };

// add_commas(12345661257615242)

// Refactored Solution

 var add_commas = function (number) {
  var number_string = number.toString();

  var sliced_string = number_string.slice(-3);
  var index = -3;
  var final_string = "";
  while (number_string.length + index > 0) {
    index += -3;
    var next_3 = number_string.slice(index, index + 3);
    final_string = next_3 + "," + final_string
  };
  final_string += sliced_string;
  console.log(final_string);
}
add_commas(1234567)
// var number_test = "12345"
// console.log(number_test.slice(number_test.length -3, number_test.length))


// Your Own Tests (OPTIONAL)




// Reflection
// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?

// It was similar to doing the problem in Ruby, just had to make some adjustments to make the different methods and variables work in js.

// What did you learn about iterating over arrays in JavaScript?

// I learned that Ruby does it way better. You have to use much more complex logic.

// What was different about solving this problem in JavaScript?

// You had to iterate through it in a more complex way, but other than that it was quite similar.

// What built-in methods did you find to incorporate in your refactored solution?

// We didn't really find anything new, just took out a little superfluous code.
