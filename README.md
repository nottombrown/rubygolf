# Ruby Golf

## Requirements

  ruby 2.1
  RSpec 2.14

## setup

 * Fork https://github.com/rubyhacknight/rubygolf to your own github account.
 * Clone it to your local machine.
 * Install gems:
 
   $ cd rubygolf
   $ bundle

## How to play

Ruby Golf is a game whereby the player is required to solve a number of problems (holes) in the fewest characters possible.  The course consists of nine holes that you must implement.  The holes are static methods that need to written for the Golf class (lib/golf.rb).  The requirements for these methods is specified by a set of RSpec examples for each hole (spec/golf_spec.rb).  To run the specs, simply run:

  rake

The first time you run this, all tests will fail.  The aim is to get all test to pass.  Building will also report the number of characters you took to complete the course.  The fewer characters you use, the better.

## Example - course complete

```
rubygolf git:(master) ✗ rake
/Users/dwaller/.rvm/rubies/ruby-2.1.1/bin/ruby -S rspec spec/golf_spec.rb
...........................

Finished in 0.00462 seconds
27 examples, 0 failures
-----------------------------------------------
| Congratulations, you've completed the course.
| Total characters: 522
-----------------------------------------------
```

## Rules

 * Whitespace isn't counted
 * No requires, includes, backticks etc. Use only the ruby standard library.
 * Metaprogramming is allowed (within the Golf class only)
 * The only file you are allowed to modify is lib/golf.rb
 * No hard-coding return values!
 * If in doubt, ask.
