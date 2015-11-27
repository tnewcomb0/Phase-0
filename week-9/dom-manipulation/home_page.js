// DOM Manipulation Challenge


// I worked on this challenge [by myself, with: ].


// Add your JavaScript calls to this page:

// Release 0:



// Release 1:

var done = document.getElementById("release-0");
done.className = "done";
document.getElementByClassName("done");

// Release 2:

document.getElementById("release-1").style.display = none;

// Release 3:

document.getElementById("release-2").innerHTML = "I completed release 2."


// Release 4:

document.getElementById("release-3").style.backgroundColor = "#955251";


// Release 5:

var x = document.getElementsByClassName("release-4");
var i;
for (i = 0; i < x.length; i++) {
    x[i].style.fontSize = "2em";
}

// Release 6:

var tmpl = document.getElementById("hidden");
document.body.appendChild(tmpl.content.cloneNode(true));