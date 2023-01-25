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
A recent example of a not-so-smart question had a user asking for help on their Java program.

```

Question: I need help for a simple java program

I need help with this java program. The task is to write a program that receives n number of 
flight companies and after that until the command "Finish" to receive passengers for each company. 
At the end of the program, the result should be the name of each company and the average number of
passengers for that company. Also, have to print the name of the company which has the most passengers. 
I figured out how to print the name of every company and the average number of passengers per flight but 
in the end, I don't know how to print the name of the company which has the most passengers. In my case, 
the name of the company with the most passengers is the last integer instead of the company name.

This is my code:

Scanner scanner = new Scanner(System.in);

int n = Integer.parseInt(scanner.nextLine());
    String companyName = "";
    int sum = 0;
    int counter = 0;
    String topCompany = "";
    int mostPeople = 0;


    for (int i = 0; i < n; i++) {
        int maxNumber = 0;

        String input = scanner.nextLine();
        companyName = input;
        char symbol = companyName.charAt(0);
        boolean isSymbol = false;

                if (symbol>=65 && symbol<=90){
                    isSymbol = true;
                }

                if (isSymbol){
                    topCompany = companyName;
                }

        while (!input.equals("Finish")) {


            if (sum > maxNumber) {
                maxNumber = sum / counter;
                mostPeople = maxNumber;



            }

            input = scanner.nextLine();


            if (input.equals("Finish")) {
                break;
            }
            int people = Integer.parseInt(input);
            counter++;
            sum += people;
        }

        System.out.println(companyName);
        System.out.println(sum / counter);
        counter = 0;
        sum = 0;

    }
    System.out.printf("%s has most passengers per flight: %d", topCompany, mostPeople);
```

## Conclusion


