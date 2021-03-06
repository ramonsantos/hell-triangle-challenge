# Hell Triangle

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/0a7646b6ba4d4479a591614ef47077df)](https://www.codacy.com/app/ramonsantos/hell-triangle-challenge?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=ramonsantos/hell-triangle-challenge&amp;utm_campaign=Badge_Grade)
[![license](https://img.shields.io/github/license/mashape/apistatus.svg)]()

## Challenge

Given a triangle of numbers, find the maximum total from top to bottom.

Example:


``` ruby
   6
  3 5
 9 7 1
4 6 8 4
```

In this triangle the maximum total is: ​ **6 + 5 + 7 + 8 = 26**

An element can only be summed with one of the two nearest elements in the next row.
For example: The element *3* in the 2nd row can only be summed with *9* and *7*, but not with
*1*.

Your code will receive an (multidimensional) array as input.
The triangle from above would be:

``` ruby
example = [[6],[3,5],[9,7,1],[4,6,8,4]]
```

## Why Ruby?

The programming language chosen to solve this challenge was [*Ruby*](https://www.ruby-lang.org/en/). Some of the main reasons for the choice are:

* Dynamism;
* Readability;
* Professional experience.

## How to Run?

### Install Ruby and Rubygems

Example of installation on Fedora

``` bash
sudo dnf install ruby rubygems
```

### Install Rake and Bundler Gems

``` bash
gem install rake bundler
```

### Install Project Dependencies

``` bash
bundle install
```

### Run Tests

``` bash
rake test
```
