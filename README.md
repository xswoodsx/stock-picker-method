# Stock Picker Class and Method for Odin Project work

This method takes in an array of stock prices, one for each hypothetical day. It should return a pair of days representing the best day to buy and the best day to sell. Days start at 0.

### Testing

Rspec

Tests have also been carried out using test data from other github users - see final two tests - They're results match mine.

` > stock_picker([17,3,6,9,15,8,6,1,10]) => [1,4] # for a profit of $15 - $3 == $12`

### Solution

- the method is called on the Stock Picker class
- the array of stock prices is looped over
- there is an if statement that, if evaluated to true, calls another method to update the array that holds the index
- the if statement has to meet two criteria

  1. the sum of the current array value being looped over - the current value in the loop has to be less than the stock sale value i.e. the point at which we want the maximum profit.
  2. the index of the current val also has to be lower than the current value being looped over in the while state. **this is because we need to buy, before we can sell**

- The above is carried out by doing a while loop within a each statement.
