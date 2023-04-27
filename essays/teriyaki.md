---
layout: essay
type: essay
title: "I'd like an order of Teriyaki Design Patterns."
# All dates must be YYYY-MM-DD format!
date: 2023-04-26
published: true
labels:
  - Reflection
  - Design Patterns
---
<figure>
<img width="500px" class="img-thumbnail img-fluid" src="../essays/img/essay06/teriyakifactory.jpg" alt="AI generated image of a factory" title="Images with text seem to be a weakspot for this version of DALL-E">
<figcaption>Bing Image Creator's Attempt at a Teriyaki Factory</figcaption>
</figure>

## A Summary

Design patterns provide general reusable solutions from experienced software developers that address common problems.

## Teriyaki Factory: Competition for [May’s Hawaii](https://www.purityfoodshawaii.com/mayshawaii).

Since I am a human and definitely not a robot or A.I., I have a lifetime’s worth of experience with food. I also have some experience with cooking. Over the years, I have learned several cooking techniques that can apply to many sets of ingredients.

Teriyaki-style food is very popular here in Hawaii and we want to capitalize on this fact. Suppose we want to create a business that provides retail stores and restaurants ready-to-cook food.

One way to do this is to create a Teriyaki Factory. Since this will be a new business, we’ll start with hamburger patties and chicken thighs. The factory will prepare these options using a function called:
makeTeri()

Now, makeTeri() will do the following.
1. Prepare teriyaki sauce
2. Marinate protein in teriyaki sauce.
3. Package for shipping.

The above is an example of a Factory Design Pattern. It takes in a parameter (protein) and a ready-to-cook teriyaki protein comes out. The benefit of this approach is that if I want to add another protein to the menu, I only need to modify the makeTeri() function instead of creating a whole new process.


## Final Thoughts
