---
layout: essay
type: essay
title: "But It Works!"
# All dates must be YYYY-MM-DD format!
date: 2023-02-09
published: true
labels:
  - Reflection
  - Coding Standards
---

<!-- Some coding standards can actually help you learn a programming language. Do you agree?

After your first week of using ESLint with IntelliJ, what are your impressions? Are you finding that getting the green checkmark is painful, or useful, or both, or something else entirely?

Write an interesting, informative essay on coding standards that addresses some or all of the above questions, or goes in a different direction entirely regarding coding standards. Make sure it provides your personal perspective and useful insights.. -->



<img width="400px" class="img-thumbnail" src="../essays/img/essay04/99.png">


## It Works, Doesn't It?
```javascript
class MenuItem {
  constructor(name, ingredients, prices, calories) {
    this.name = name;
    this.ingredients = ingredients;
    this.prices = prices;
    this.calories = calories;
  }
}

const papayaSunrise = new MenuItem("Papaya Sunrise", ["papaya", "strawberry", "peach"], {small: 5.15, medium: 5.75, large: 6.55}, {small: 190, medium: 280, large: 330});
const peachPerfection = new MenuItem("Peach Perfection", ["mango", "strawberry", "peach"], {small: 5.15, medium: 5.75, large: 6.55}, {small: 210, medium: 320, large: 360});


class Menu {
  constructor() {
    this.menuList = [];
  }

  addMenuItem(item) {
    this.menuList.push(item);
  }

  findMenuItems(ingredient) {
    let foundItems = [];

    for (let item of this.menuList) {
      if (item.ingredients.indexOf(ingredient) >= 0) {
        foundItems.push(item);
      }
    }
    return foundItems;
  }
}

let myMenu = new Menu;

myMenu.addMenuItem(papayaSunrise);
myMenu.addMenuItem(peachPerfection);

console.log(myMenu.findMenuItems("mango"));
```

The above code was written for a WOD to practice Javascript Object Orientation. If you were to run it on JSFiddle or through Node, it should work perfectly fine. Indeed, it does on my computer. However, a funny (not) thing happens when you run it in IntelliJ with ESLint on.

<img width="200px" src="../essays/img/essay04/errors.png" class="img-thumbnail" >

At first glance all of these warnings seem more like nitpicking than constructive error-checking.


## Check This Out.



## Dear Future Me,
