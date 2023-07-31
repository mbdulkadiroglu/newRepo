// index.js


console.log(addTwoNumbers(2, 3));  // Output: 5
console.log(subtractTwoNumbers(5, 2));  // Output: 3


// New method to get the circumference of the circle
Circle.prototype.getCircumference = function() {
    return 2 * Math.PI * this.radius;
}
//whatever

//some random stuff

// Using the Circle object
let myCircle = new Circle(5);
console.log(myCircle.getArea()); // Output: 78.53981633974483
console.log(myCircle.getCircumference()); // Output: 31.41592653589793

let n = 10;
