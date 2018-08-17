ages = [24, 30, 18, 20, 41]

ages_sum = ages.sum.round(1)
mean_age = (ages_sum / ages.length)
age_deviation = ages.map { |age| age - mean_age }
squared = age_deviation.map { |deviation| deviation **2 }
stnd_dev = Math.sqrt(squared.sum / total_athletes).round(2)

# When you find the standard deviation, print it out
print stnd_dev
