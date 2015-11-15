// Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description: Battle the monsters and save the princess at the end! This will be like a very simple choose your own adventure.
// Overall mission: To advance through the castle and save the princess.
// Goals: Fight monsters to get stronger and save the princess.
// Characters: player, the protagonist, an skeleton, a chimaera, and the princess.
// Objects: Chunk (health and damage), the skeleton (health and damage), and the dragon (health and damage)
// Functions: Each sequence in the adventure. The forest, the skeleton fight, the chimaera fight.

// Pseudocode
// 1. Make player an object with 3 properties: health, weapon, and damage.
// 2. Make skeleton an object with 2 properties: health and damage.
// 3. Make chimaera an object with 2 properties: health and damage.
// 4. Make choices for the player at various junctures.
// 5. Depending on the input make the choices have consequences.
// 6. Have 2 endings.

// Initial Code

// Make the hero.

var chunk = {
health: 10,
damage: 0,
weapon:""
}

// Make the skeleton.

var skeleton = {
  health: 10,
  damage: 1
}

// Make the chimaera.

var chimaera = {
  health: 30,
  damage: 3
}

var start = function() {
console.log("You wipe the sweat from your eyes as you push through the thick foliage, hoping to catch a glimpse of something other than this endless forest. You discard your broken blade and curse your luck that it would have broken at the worst time.")
console.log("You find yourself in a clearing, and notice two weapons lying on the ground: a sword and a hammer.")}
var weapon=function(choice){
if (choice === "sword"){
  chunk.weapon = "sword";
  chunk.damage = 5;
  console.log("You pick up the sword and notice its fine balance. Your health is 10. Your damage has gone from 0 to 5!");
  castle()
}
else if (choice === "hammer"){
  chunk.damage = 3;
  chunk.weapon = "hammer"
  console.log("You pick up the hammer and know that nothing will get in your way now. Your health is 10. Your damage has gone from 0 to 3!");
  castle()
}
else {
  chunk.health -= 10
  console.log("You don't choose an available weapon and are promptly eaten by wolves. Your health is now "+ chunk.health+".")
}
}

var castle = function(){
console.log("You stumble over an exposed tree root, and as you are pulling yourself up off the ground you see it: the terrifying visage of the Castle.")
console.log("You unsheathe your weapon and put on your helm, knowing that your path to the princess will not be easy.")
console.log("You enter the castle and are immediately beset by a skeleton!")
}
  var fightSword = function(decision){
  if (decision === "yes"){
    console.log("You hack and slash at the skeleton but you realize that there is no way to hurt it with a blade. As you slowly wear down you wish you had chosen the hammer, as you would have no trouble pulverizing it with a blunt weapon. As the light fades from your eyes you hear the skeleton welcoming you to your final resting place. Your health is now "+ chunk.health+".")
    end("dead")
  }
  else if (decision != "yes"){
    console.log("You decide not to fight and hope the skeleton shows mercy. Your health is now "+ chunk.health+".")
    end("dead")
  }
  }

  var fightHammer = function(decisionHammer){
if (decisionHammer == "yes"){
  chunk.health -= 5
    console.log("You engage the skeleton in battle, and he immediately delivers a crushing blow to your head. Your health is now "+ chunk.health+". You raise your hammer and smash the skeleton into a fine dust.")
    fighton()
  }
  else if (decisionHammer == "no"){
    chunk.health -= 9
    console.log("You try and sneak past the skeleton, but your heavy boots were not made for sneaking and he hears you. He immediately engages you and you are in for the fight of your life. You end up beating him off, but only just, sustaining some serious injuries. Your health is now "+ chunk.health+".")
    fighton()
  }
  }

var fighton = function(){
  console.log ("You continue on past what remains of the skeleton, congratulating yourself on picking up the hammer instead of the sword, as you could never have defeated the skeleton with a blade.")
  console.log ("You feel stronger somehow after defeating the skeleton.")
  chunk.health += 50
  chunk.damage = 10
  console.log("Your health is now "+ chunk.health +" and your damage is now "+ chunk.damage +"!")
  console.log("You open the door leading further into the castle and come upon a monstrosity- a creature that looks as if it is fashioned from different animals. It has the head of a lion on one end, the body of a horse, the head of a snake on the other end, and it has the talons of an eagle. You remember learning of these creatures, they are called chimaeras. You have to choose which end you will attack.")
}
  var fightBoss = function(chimaeraDecision){
  if (chimaeraDecision === "lion"){
    chunk.health = 0
    console.log("You charge straight in and start swinging at the lions-head, landing blow after blow. But the chimaera is crafty, it spins around and the snake-head sinks its fangs into you. You feel you limbs go numb as the poison pumps through your blood. Your vision goes black. Your health is now "+ chunk.health+".")
end("dead")
  }
  else if (chimaeraDecision === "snake"){
    console.log("You circle around behind the chimaera and smash the weaving snake-head. You are able to fend off its raking talons and snapping maw and land enough solid blows to knock it out. You step past it and continue on, feeling that your quest is almost at an end.")
    end("alive")
  }
}
var end = function(status){
  if (status == "dead"){
    console.log ("You died. Maybe try again but make different decisions.")
  }
  else if (status == "alive"){
    console.log ("You make it to the end of the castle and rescue the princess! How stereotypical!")
  }
}
//---------------------------------------------------
//-------------DIRECTIONS FOR THE GAME---------------
//---------------------------------------------------
//First, type start()

// Run the program and read the story up til now. Try not to read below this so you don't spoil anything.





// Next, choose your weapon-either type weapon("sword") or weapon("hammer")

//Run the program and read the story up til now. Try not to read below this so you don't spoil anything.





// Now, you have to fight the skeleton, type either fightSword or fightHammer, depending on your earlier weapon choice. Also, choose whether you want to fight it by adding ("yes") or ("no") after your fightSword or fightHammer. If you choose the other weapon after dying, make sure you change both this method call and the last one to reflect the new choice.


// Run the program. If you died start over.








// Almost there! Now you face your next challenge-the boss. Type where you will attack the boss, either the head or the tail like this- fightBoss("lion") or fightBoss("snake")

// Run the program. If you died start over.



// Refactored Code

// I will refactor if I have time. I haven't really done much with the properties and the leveling up changing of properties. I'm quite sure this code works but prompt doesn't work when you run it in node so its difficult to make any changes. Not sure how to put it into html. Will try to do that time-permitting. I changed everything so it could be run in console, took out all the prompts. It works now and I've changed it so there are a few instances where properties get changed.




// Reflection
//
//What was the most difficult part of this challenge?

// The most difficult part was trying to figure out how I can test it since you can't use prompt in node. I'm trying to figure out what to use instead. So I ended up changing everything into functions you could call. This isn't nearly as slick or easily interactible, but it at least works.

// What did you learn about creating objects and functions that interact with one another?

// I learned how to nest functions and objects much better, and I learned how they flow much better.

// Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?

// I didn't really learn any new ones, I tried prompt but as I understand it you can use it in the console, only in a browser.

// How can you access and manipulate properties of objects?

// You just use variableName.property and set it equal to something.

//
//
//
//
//
//