## Hell Triangle - Challenge

Given a triangle of numbers, find the maximum total from top to bottom
Example:
                6
               3 5
              9 7 1
             4 6 8 4

  In this triangle the maximum total is: ​ 6 + 5 + 7 + 8 = 26
An element can only be summed with one of the two nearest elements in the next row.
For example: The element 3 in the 2nd row can only be summed with 9 and 7, but not with 1

  Your code will receive an (multidimensional) array as input.

  The triangle from above would be:
  example = [[6],[3,5],[9,7,1],[4,6,8,4]]


#### Linguagem

  I choose how programming language the Ruby, for being object-oriented, where I feel more at ease,
and also for your reading easy and undestanding.
  Besides that there is a library (the calls GEMs) called Rspec for write tests from a friendly way.

#### Construction and Execution

  For execution of the challenge it's necessary:

    * ruby 2.4.0p0
    * RSpec 3.6

  For constructions is enough fork this project with the command
    ```
    git clone git@github.com:GabrielCairess/hell_triangle_challenge.git
    ```

  Then run
    ```
    ruby hell_triangle.rb
    ```

  For execute the program, and
    ```
    rspec hell_triangle_spec.rb
    ```

  For execute the tests.




