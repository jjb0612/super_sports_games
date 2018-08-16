ages = [24, 30, 18, 20, 41]


# Your code here for calculating the standard deviations
def ages_sum(array)
  sum = 0
  array.each do |age|
    sum += age
  end
  sum
end

def ages_index(array)
  array.count
end

def ages_average(sum, index)
  sum / index
end

def ages_subtract(array, average)
  subtracted = []
  array.each do |age|
    subtracted << age - average
  end
  subtracted
end

def squared(array)
   squared = []
  array.each do |age|
    squared << age ** 2
  end
  squared.sum.round(1)
end

def sum_divide(num, index)
  num / index
end

def square_root(num)
  Math.sqrt(num)
end

def standard_deviation(array)
  amount = ages_index(array)
  total = ages_sum(array).round(1)
  age_average = ages_average(total, amount).round(1)
  subtract = ages_subtract(array, age_average)
  squared = squared(subtract)
  divided = sum_divide(squared, amount)
  puts square_root(divided).round(2)
end
puts standard_deviation(ages)

# When you find the standard deviation, print it out
