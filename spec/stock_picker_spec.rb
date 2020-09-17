# frozen_string_literal: true

require './lib/stock_picker'

describe 'returns a pair of numbers for the best day to buy and best day to sell stocks' do
  it 'returns the index of the lowest value in the array' do
    stock = StockPicker.new
    array = [12, 6, 4, 8, 9, 21]
    actual = stock.find_best_days_to_buy_and_sell_stock(array)

    expected = 2

    expect(actual[0]).to eql(expected)
  end
  it 'returns the index of the highest value in the array' do
    # skip
    stock = StockPicker.new
    array = [12, 6, 4, 8, 9, 21]
    actual = stock.find_best_days_to_buy_and_sell_stock(array)

    expected = 5

    expect(actual[1]).to eql(expected)
  end

  it 'returns the index of lowest value in the array that is not higher than the highest' do
    # skip
    array = [12, 6, 4, 8, 9, 21, 1]
    stock = StockPicker.new

    actual = stock.find_best_days_to_buy_and_sell_stock(array)

    expected = 2

    expect(actual[0]).to eql(expected)
  end
  it 'returns the index of the highest value in the array' do
    stock = StockPicker.new

    array = [12, 6, 4, 8, 9, 7, 1]
    actual = stock.find_best_days_to_buy_and_sell_stock(array)
    expected = 4

    expect(actual[1]).to eql(expected)
  end
   it 'returns the index of the return when the highest day is the first day' do
    stock = StockPicker.new

    array = [22, 6, 4, 8, 9, 21, 11]
    actual = stock.find_best_days_to_buy_and_sell_stock(array)
    expected = 5

    expect(actual[1]).to eql(expected)
   end
   it 'returns the index of the return when the highest day is the first day' do
    stock = StockPicker.new

    array = [22, 6, 7, 8, 9, 21, 1]
    actual = stock.find_best_days_to_buy_and_sell_stock(array)
    expected = 1

    expect(actual[0]).to eql(expected)
   end
   it 'returns the index of the days to buy and sell' do
    stock = StockPicker.new

    array = [17,3,6,9,15,8,6,1,10]
    actual = stock.find_best_days_to_buy_and_sell_stock(array)
    expected = [1,4]

    expect(actual).to eql(expected)
   end
   it 'returns the index of the days to buy and sell' do
    stock = StockPicker.new

    array = [13,3,7,29,18,15,34,19,2,35]
    actual = stock.find_best_days_to_buy_and_sell_stock(array)
    expected = [8,9]

    expect(actual).to eql(expected)
   end
end
