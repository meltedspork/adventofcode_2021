measurements = []
increase_count = 0

# measurements = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
File.foreach('./measurements.txt') { |measurement| measurements << measurement.to_i }

measurements.each_with_index do | value, index |
  next if index - 1 <= 0 || index - 2 < 0

  measurement = measurements[index] + measurements[index - 1] + measurements[index - 2]
  previous_measurement = measurements[index - 1] + measurements[index - 2] + measurements[index - 3]

  if previous_measurement < measurement
    increase_count += 1
  end
end

puts increase_count
