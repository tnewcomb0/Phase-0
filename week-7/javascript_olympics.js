// JavaScript Olympics

// I paired [by myself, with:] on this challenge.

// This challenge took me [#] hours.


// Warm Up




// Bulk Up

var athletes = [
  ["Sarah Hughes", "Ladies' Singles"],
  ["Derek Jeter", "Baseball Champ"]
  ]

function win(){
  for (var counter = 0; counter < athletes.length; counter++){
  console.log(athletes[counter][0] + " won the " + athletes[counter][1]);
  }
}


win();


// Jumble your words

function reverse (string){
  var stringReverse = string.toString().split("").reverse().join("");
  console.log(stringReverse)
}

 reverse("string")



// 2,4,6,8

var array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var evenArray = [];

function even(a){
  for (var counter = 0; counter < array.length; ++counter) {
  if ((array[counter]) % 2 === 0){
    //array.push(array[counter]);
    //console.log(array[counter]);
    evenArray.push(array[counter]);
  }
  //console.log(evenArray);
  }
  console.log(evenArray);
}

even(array)



// "We built this city"

function Athlete(name, age, sport, quote) {
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
}

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)



// Reflection
// What JavaScript knowledge did you solidify in this challenge?

// I learned more about how looping works in JS. I also learned more about how constructor functions work.

// What are constructor functions?

// Construtor functions are basically a different way of writing an object, but using a function instead of a variable.

// How are constructors different from Ruby classes (in your research)?

// They are a function, and lack some of the abilities of a class in Ruby. They seem, at least for now, to be a much more difficult way to do similar things than a class in Ruby.
