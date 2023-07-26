// index.js





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

let myCircle = new Circle(5);
console.log(myCircle.getArea()); // Output: 78.53981633974483
console.log(myCircle.getCircumference()); // Output: 31.41592653589793
