measurements = []
increase_count = 0

# measurements = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
File.foreach('./measurements.txt') { |measurement| measurements << measurement.to_i }

measurements.each_with_index do | value, index |
  if measurements[index - 1] < value
    increase_count += 1
  end
end

puts increase_count
