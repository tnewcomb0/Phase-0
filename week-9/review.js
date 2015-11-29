/* Pseudocode
Create a function to make an empty list.
Define addItem that takes 3 arguments- list, item, and quantity.
Set the item attribute of list to quantity
Create a function removeItem that takes list and item and removes item from list.
Create a function updateItem that takes list, item, and quantity that changes the value of quantity.
Create a function print_list that prints the list nicely.
*/

// function newList() {return Object.create()};

// function addItem(list, item, quantity) {
//   list[item] = quantity;
// }
// function removeItem(list, item) {
//     delete list[item];
//   }
//
// function updateItem(list, item, quantity) {
//     list[item] = quantity;
//   }
//
// function printList(list) {
//   for (var item in list) {
//     console.log(item + "- " + list[item].toString());
//   }
// }


//Refactor:
var List = function(listName) {
  this.listName = listName;
  this.items = Object.create;
}
List.prototype.addItem = function(item, quantity) {this.items[item] = quantity}
List.prototype.removeItem = function(item) {delete this.items[item]}
List.prototype.updateItem = function(item, quantity) {
  if (this.items[item]) {this.items[item] = quantity}
}
List.prototype.printList = function() {
  console.log(this.listName);
  for (var item in this.items) {
    console.log(item + "- " + this.items[item].toString());
  }
}

groceries = new List("Grocery List");
groceries.addItem("Apple", 10);
groceries.addItem("ham", 4);
groceries.addItem("shampoo", 1);
groceries.updateItem("ham", 2);
groceries.removeItem("shampoo");
groceries.printList();

/* Reflection
What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)

It helped me learn how to use prototype, and it solidified how to use constructor functions.

What was the most difficult part of this challenge?

I had trouble accessing the right elements in the list and I also had trouble because at first I tried to directly translate my Ruby in JS.

Did an array or object make more sense to use and why?

An object made more sense because you are able to manipulate the data more easily.
*/