'use strict';

class Hello {
  constructor() {
    this.num = 2;
  }

  addTwo() {
    const addIt = () => {
      //arrow function locks the value of 'this'
      this.num = this.num + 2
    }
    addIt()
  }

  addThree() {
    this.num = this.num + 3
  }
}

const h = new Hello();
h.addTwo();
h.addThree();
console.log(h.num);