'use strict';

class Animal {
  eat() {
    console.log("om nom nom");
  }
}

class Dog extends Animal {

}

const d = new Dog();
d.eat();