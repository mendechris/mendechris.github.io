---
layout: essay
type: essay
title: "Smart vs. Not-so-Smart Questions"
# All dates must be YYYY-MM-DD format!
date: 2023-01-26
published: true
labels:
  - Questions
  - Answers
  - StackOverflow
---


<img width="500px" class="img-thumbnail" src="../essays/img/essay02/coffee_cup_holes.png">

Credit: [Randall Munroe at XKCD](https://xkcd.com/2658/)

## The goal
Most of the time when we ask a question, the goal is to get an answer. Of course, not every answer is helpful. If the only answer was a useless one, we'd be in the same position as if we didn't ask the question at all. 

Take the above comic, we are presented with four legitimate answers, but which one is actually useful? As presented above, the question is much too broad and doesn't give any insight as to why the question is being asked. This just makes it more difficult for the reader to properly answer the question.

While the coffee-cup question may be silly, there are many similar ambiguous questions all over StackOverflow. Nowadays, these questions don't stay up for very long and any answers they receive are likely unuseful.

## Getting What You Need




```
Question:
Something
```



 

## Stack Overflow Can't Find the Question.
A recent example of a not-so-smart "question" is from a user asking for help on their Java program.

---
**Question: I need help for a simple java task**<br><br>
 
I am taking a java course online and I need a solution for one task. This is the condition:

Write a program that tracks the average number of passengers per flight for each airline . Every day there are a certain number of airlines that have flights . Until the " Finish " command is received, you receive the number of passengers per flight . You need to calculate the average number of passengers per airline flight ( rounded to the smallest whole number ). Login : Initially, the number of airlines is read from the console - an integer in the interval [1… 20] Then read for each airline : • Airline name - text • " Finish " command is received, it reads : o Number of passengers per flight – an integer in the range [1... 360] Output : After reading all the passengers of a given company, one line is printed on the console : • "{ airline name }: { average number of passengers per flight } passengers." After all flights of all airlines have taken off, one line is printed : • "{ the name of the airline with the most passengers per flight } has most passengers per flight: { the average number of passengers per flight } "

This is the input:

3 WizzAir 180 230 100 Finish BulgariaAir 50 60 90 Finish Lufthansa 260 320 Finish

This is the output: WizzAir: 170 passengers. BulgariaAir: 66 passengers. Lufthansa: 290 passengers. Lufthansa has the most passengers per flight: 290

This is my code:


```Java
Scanner scanner = new Scanner(System.in);

    int n = Integer.parseInt(scanner.nextLine());
    String companyName = "";

    for (int i = 0; i < n; i++) {

        String input = scanner.nextLine();
        companyName = input;

        double sum = 0;


        while (true) {
            input = scanner.nextLine();

            if (input.equals("Finish")) {
                System.out.printf("%s: %d passengers.%n", companyName, Math.round(sum / n));
                sum = 0;
                break;
            }

            int people = Integer.parseInt(input);
            sum += people;
        }


    }
```

Thank you for the help.

---

[See Original Question at StackOverFlow](https://stackoverflow.com/revisions/75189194/1)

There are several issues with the above post. The first noticeable issue is that the header is vague and doesn't tell the reader what the issue is. It would have been better for the user to be more specific. Another issue is in the formatting of the post. The wall of text with odd bulleting makes the text very difficult to read and understand, which likely added to the frustration of readers. Additionally, while the user did provide some code for their attempt, they did not include any explanation as to what issues they had run into. Really, there wasn't an actual question for anyone to answer. 

One the commenters stated:
> You've posted broad requirements and unexplained code but have not yet asked a specific on-topic question. How is your current code misbehaving? What specifically are you confused or stuck on? Please edit and improve your post to help make it both easier to answer and more appropriate for this site. The How to Ask and How do I ask and answer Homework questions links can help guide you in this task.<br> Also, start by fixing your question title. We already know that you "need help for a task", why else would you be posting a question here? Your title should summarize your actual problem statement, not your plight.

At the time of this posting, the question had received no answers and had been marked closed due to lack of detail. The lack of relevant responses really highlights the problems of a not-so-smart question. 

## Conclusion


