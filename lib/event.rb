require 'pry'
class Event

  attr_reader :name, :ages
  def initialize(name, ages)
    @name = name
    @ages = ages
  end

  def max_age
    @ages.max
  end

  def min_age
    @ages.min
  end

  def average_age
    sum = 0
    @ages.each do |age|
      sum += age
    end
    sum.round(1) / @ages.count
  end

  def standard_deviation_age
    amount = ages_index
    total = ages_sum
    age_average = ages_average(total, amount)
    subtract = ages_subtract(age_average)
    squared = squared(subtract)
    sum = squared_sum(squared)
    divided = sum_divide(sum, amount)
    square_root(divided)
  end

  def ages_sum
    sum = 0
    @ages.each do |age|
      sum += age
    end
    sum.round(1)
  end

  def ages_index
    @ages.count
  end

  def ages_average(sum, index)
    sum / index
  end

  def ages_subtract(average)
    subtracted = []
    @ages.each do |age|
      subtracted << age - average
    end
    subtracted
  end

  def squared(array)
     squared = []
    array.each do |age|
      squared << age ** 2
    end
    squared
  end

  def squared_sum(num)
    num.sum.round(1)
  end

  def sum_divide(num, index)
    num / index
  end

  def square_root(num)
    Math.sqrt(num).round(2)
  end


end
