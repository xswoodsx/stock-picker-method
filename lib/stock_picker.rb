# frozen_string_literal: true

class StockPicker
  def initialize
    @stock_index = []
    @stock_sale_value = 0
  end

  def find_best_days_to_buy_and_sell_stock(array)
    array.each do |val|
      i = 0
      while i < array.length
        if (array[i] - val) > @stock_sale_value && array.index(val) < array.index(array[i])
          @stock_sale_value = array[i] - val
          stock_index_values(array.index(array[i]), array.index(val))
        end
        i += 1
      end
    end
    @stock_index
  end

  def stock_index_values(buy, sell)
    @stock_index[0] = sell
    @stock_index[1] = buy
  end
end
