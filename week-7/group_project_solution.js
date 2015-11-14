// inputs will be:
var oddList = [1, 2, 3, 4, 5, 5, 7]
var evenList = [4, 4, 5, 5, 6, 6, 6, 7]

//Our functions are:
function Sum(list) {
  for (var length = list.length, counter = 0, total = 0; counter < length; counter++) {
    total += list[counter];
  }
  return total
}

function Mean(list) {
  var length = list.length;
  return Sum(list)/length;
}

function Median(list) {
  var length = list.length;
  var half = Math.floor(length/2);
  if (length % 2 != 0) {
    return list[half+1];
  }
  else {
    var result = (list[half]+list[half+1])/2;
    return result;
  }
}

// Tests
console.log(Sum(oddList));
console.log(Sum(evenList));
console.log(Mean(oddList));
console.log(Mean(evenList));
console.log(Median(oddList)); // Yes, I know these medians aren't coming out right.
console.log(Median(evenList)); // But we aren't allowed to fix it.  It's in the psuedocode.  Oh well.

// Trevor: Refactor was not really possible since the code was already really clean and concise. Great job on that guys!

// Trevor: User Stories

// As a user, I want to give you two lists of numbers and I want you to run some tests on them. First, I will want to know the sum of each list. Second, I need to know the mean of these same lists. Lastly, I will need the median of the two lists.

//I think that's how we were supposed to do the user stories, it seems pretty simplistic. If there's anything more you all should think I should add to this feel free to let me know and I'll fiddle with it!