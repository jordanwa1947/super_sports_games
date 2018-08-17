
class Event
  attr_reader :ages, :name
  def initialize(name, ages)
    @ages = ages
    @name = name
  end

  def max_age
    ages.max
  end

  def min_age
    ages.min
  end

  def average_age
    ages_sum = ages.sum.round(1)
    mean_age = (ages_sum / ages.length)
  end

  def standard_deviation
    age_deviation = ages.map { |age| age - average_age }
    squared = age_deviation.map { |deviation| deviation ** 2 }
    Math.sqrt(squared.sum / ages.length).round(2)
  end
end
