// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.

var hello = "Hi there!";
console.log(hello)

//Write a short program that asks for a user to input their favorite food.
//After they hit return, have the program respond with "Hey! That's my favorite too!"
var food = String(prompt("What is your favorite food", "..."));
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

var triangle = "#";
while (triangle.length < 8){
  console.log(triangle);
  triangle += "#"
}

// Functions

// Complete the `minimum` exercise.

function min(x,y) {return x < y ? x : y}

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {name: "Trevor", age: 26, favorite_foods: ["enchiladas", "beef stroganoff", "tri tip steak"], quirk: "I\'m a prefectionist."}