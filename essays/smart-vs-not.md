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
While searching for an answer to my own question, I stumbled upon this question. While it is not a "perfect" smart question, it was very helpful for me to reference.

```
Question: Python - Accessing JSON element

I am trying retrieve weather forecasting from DarkSky using their API with the code below. 
I am interested only in the part of hourly forecasting data:

url="https://api.darksky.net/forecast/api_key/33.972386,-84.231986"
response = requests.get(url)
data = response.json()
data

Here is the part of JSON data I get from data pull:

{'latitude': 33.972386,
 'longitude': -84.231986,
 'timezone': 'America/New_York',
 'currently': {'time': 1553052005,
  'summary': 'Clear',
  'icon': 'clear-night',
  'nearestStormDistance': 23,
  'nearestStormBearing': 169,
  'precipIntensity': 0,
  'precipProbability': 0,
  'temperature': 43.69,
  'apparentTemperature': 43.69,
  'dewPoint': 25.61,
  'humidity': 0.49,
  'pressure': 1026.37,
  'windSpeed': 1.42,
  'windGust': 4.94,
  'windBearing': 79,
  'cloudCover': 0,
  'uvIndex': 0,
  'visibility': 3.86,
  'ozone': 309.99},
 'minutely': {'summary': 'Clear for the hour.',
  'icon': 'clear-night',
  'data': [{'time': 1553052000, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052060, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052120, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052180, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052240, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052300, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052360, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052420, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052480, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052540, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052600, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052660, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052720, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052780, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052840, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052900, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553052960, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053020, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053080, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053140, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053200, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053260, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053320, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053380, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053440, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053500, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053560, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053620, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053680, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053740, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053800, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053860, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053920, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553053980, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054040, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054100, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054160, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054220, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054280, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054340, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054400, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054460, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054520, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054580, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054640, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054700, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054760, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054820, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054880, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553054940, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055000, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055060, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055120, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055180, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055240, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055300, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055360, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055420, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055480, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055540, 'precipIntensity': 0, 'precipProbability': 0},
   {'time': 1553055600, 'precipIntensity': 0, 'precipProbability': 0}]},
 'hourly': {'summary': 'Clear throughout the day.',
  'icon': 'clear-day',
  'data': [{'time': 1553050800,
    'summary': 'Clear',
    'icon': 'clear-night',
    'precipIntensity': 0,
    'precipProbability': 0,
    'temperature': 44.13,
    'apparentTemperature': 44.13,
    'dewPoint': 25.62,
    'humidity': 0.48,
    'pressure': 1026.33,
    'windSpeed': 1.24,
    'windGust': 4.78,
    'windBearing': 93,
    'cloudCover': 0,
    'uvIndex': 0,
    'visibility': 3.49,
    'ozone': 310.66},
   {'time': 1553054400,
    'summary': 'Clear',
    'icon': 'clear-night',
    'precipIntensity': 0,
    'precipProbability': 0,
    'temperature': 42.82,
    'apparentTemperature': 42.82,
    'dewPoint': 25.57,
    'humidity': 0.5,
    'pressure': 1026.44,
    'windSpeed': 1.95,
    'windGust': 5.25,
    'windBearing': 60,
    'cloudCover': 0,
    'uvIndex': 0,
    'visibility': 4.6,
    'ozone': 308.68},
   {'time': 1553058000,
    'summary': 'Clear',
    'icon': 'clear-night',
    'precipIntensity': 0,
    'precipProbability': 0,
    'temperature': 42.45,
    'apparentTemperature': 40.02,
    'dewPoint': 25.52,
    'humidity': 0.51,
    'pressure': 1026.39,
    'windSpeed': 4.15,
    'windGust': 8.98,
    'windBearing': 61,
    'cloudCover': 0,
    'uvIndex': 0,
    'visibility': 10,
    'ozone': 307.84},
   {'time': 1553061600,
    'summary': 'Clear',
    'icon': 'clear-night',
    'precipIntensity': 0,
    'precipProbability': 0,
    'temperature': 41.97,
    'apparentTemperature': 38.42,
    'dewPoint': 25.8,
    'humidity': 0.52,
    'pressure': 1025.98,
    'windSpeed': 5.52,
    'windGust': 11.44,
    'windBearing': 63,
    'cloudCover': 0,
    'uvIndex': 0,
    'visibility': 10,
    'ozone': 307.21},
   {'time': 1553065200,
    'summary': 'Clear',
    'icon': 'clear-night',
    'precipIntensity': 0,
    'precipProbability': 0,
    'temperature': 40.7,
    'apparentTemperature': 36.97,
    'dewPoint': 25.86,
    'humidity': 0.55,
    'pressure': 1025.88,
    'windSpeed': 5.44,
    'windGust': 10.93,
    'windBearing': 61,
    'cloudCover': 0,
    'uvIndex': 0,
    'visibility': 10,
    'ozone': 306.76},

Now this is bit complex json file and I have tried using json_normalize on hourly part of json file:

json_normalize(data['hourly'])

but im getting the the response like this:

        data    icon    summary
0   [{'time': 1553050800, 'summary': 'Clear', 'ico...   clear-day   Clear 
    throughout the day.

Any idea how do I access the temperature and pressure on hourly data part? So i need to get time, temperature, 
pressure and humidity for every hour available. Thank you



```




 [View question on StackOverflow](https://stackoverflow.com/questions/55253260/python-accessing-json-element)

## Stack Overflow Can't Find the Question.
A recent example of a not-so-smart "question" is from a user asking for help on their Java program.

```
Question: I need help for a simple java task
 
I am taking a java course online and I need a solution for one task. This is the condition:

Write a program that tracks the average number of passengers per flight for each airline . Every day there are a certain number 
of airlines that have flights . Until the " Finish " command is received, you receive the number of passengers per flight . 
You need to calculate the average number of passengers per airline flight ( rounded to the smallest whole number ). 
Login : Initially, the number of airlines is read from the console - an integer in the interval [1… 20] Then read for each 
airline : • Airline name - text • " Finish " command is received, it reads : o Number of passengers per flight – an integer 
in the range [1... 360] Output : After reading all the passengers of a given company, one line is printed on the 
console : • "{ airline name }: { average number of passengers per flight } passengers." After all flights of all airlines 
have taken off, one line is printed : • "{ the name of the airline with the most passengers per flight } has most 
passengers per flight: { the average number of passengers per flight } "

This is the input:

3 WizzAir 180 230 100 Finish BulgariaAir 50 60 90 Finish Lufthansa 260 320 Finish

This is the output: WizzAir: 170 passengers. BulgariaAir: 66 passengers. Lufthansa: 290 passengers. 
Lufthansa has the most passengers per flight: 290

This is my code:


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


Thank you for the help.
```

[See Original Question at StackOverFlow](https://stackoverflow.com/revisions/75189194/1)

There are several issues with the above post. The first noticeable issue is that the header is vague and doesn't tell the reader what the issue is. It would have been better for the user to be more specific. Another issue is in the formatting of the post. The wall of text with odd bulleting makes the text very difficult to read and understand, which likely added to the frustration of readers. Additionally, while the user did provide some code for their attempt, they did not include any explanation as to what issues they had run into. Really, there wasn't an actual question for anyone to answer. 

One of the commenters stated, "You've posted broad requirements and unexplained code but have not yet asked a specific on-topic question. How is your current code misbehaving? What specifically are you confused or stuck on? Please edit and improve your post to help make it both easier to answer and more appropriate for this site. The How to Ask and How do I ask and answer Homework questions links can help guide you in this task.<br> Also, start by fixing your question title. We already know that you "need help for a task", why else would you be posting a question here? Your title should summarize your actual problem statement, not your plight."

At the time of this posting, the question had three downvotes, received no answers, and had been marked closed due to lack of detail. The lack of relevant responses highlights the issues with this not-so-smart question. 

## Conclusion


