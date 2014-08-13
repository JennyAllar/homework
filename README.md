#Hi there!
I'm really excited to submit to you my answers to the Hireology homework challenge. If nothing else, the opportunity to get solid developer feedback is priceless.
Thanks for taking the time to go over my submission.

![Intro Gif](http://media.giphy.com/media/zaezT79s3Ng7C/giphy.gif)

##Part 1 - Written Questions
You'll find in the Written Questions directory, in two separate markdown files containing my essay submissions.

##Part 2 - Programming Problems
The Programming Problems directory contains subdirectories for each of the completed coding challenges.
To run these, please use the following:


```
git clone
bundle
rake
```



================================================================================================================================================

##Hireology Software Engineer Homework

### Instructions

There are two parts to the Software Engineer Homework set. Part 1 is written answer, and Part 2 is a set of programmable problems. Please fork this repo to your GitHub account, add your work to the forked repo, and send a pull request when your work is complete.

###Part 1 - Written Questions

1. How can Memcache improve a site’s performance? Include a description about how data is stored and retrieved in a multi-node configuration.

2. Please take a look at [this controller action](https://github.com/Hireology/homework/blob/master/some_controller.rb). Please tell us what you think of this code and how you would make it better.

###Part 2 - Programming Problems

1) Write a program using regular expressions to parse a file where each line is of the following format:

`$4.99 TXT MESSAGING – 250 09/29 – 10/28 4.99`

For each line in the input file, the program should output three pieces of information parsed from the line in the following JSON format (using the above example line):

```
{
  “feature” : “TXT MESSAGING – 250”,
  “date_range” : “09/29 – 10/28”,
  “price” : 4.99 // use the last dollar amount in the line
}
```

2) Please complete a set of classes for the problem described in [this blog post](http://www.adomokos.com/2012/10/the-organizations-users-roles-kata.html). Please do not create a database backend for this. Test doubles should work fine.
