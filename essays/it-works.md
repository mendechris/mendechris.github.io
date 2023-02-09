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
The followig code was written for a WOD to practice Javascript Object Orientation. If you were to run it on JSFiddle or through Node, it should work perfectly fine.

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

However, a funny thing happen when I viewed the code in IntelliJ with ESLint on.

<img width="500px" src="../essays/img/essay04/errors.png" class="img-thumbnail" >

Much to my chagrin, 26 errors popped up! At first glance all of these warnings seem more like nitpicking than constructive error-checking. If it works, then does it really matter that I used double quotes instead of single quotes?

I've graded a lot of math quizzes and exams over the years and without fail there's always been at least one student-written solution that had the correct answer at the end, but the logic in the middle didn't quite make sense.

<img width="500px" src="../essays/img/essay04/miracle.png" class="img-thumbnail" >


## Check This Out.



## Dear Future Me,
