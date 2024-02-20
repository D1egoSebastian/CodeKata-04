weatherDay = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
weatherMax = [88, 79, 77, 77, 90, 81, 73, 75, 86, 84, 91, 88, 70, 61, 64, 79, 81, 82, 81, 84, 86, 90, 90, 90, 90, 97, 91, 84, 88, 90]
weatherMin = [59, 63, 55, 59, 66, 61, 57, 54, 32, 64, 59, 73, 59, 59, 55, 59, 57, 52, 61, 57, 59, 64, 68, 77, 72, 64, 72, 68, 66, 45]

def findMinSpread(day_number, max_temps, min_temps)
  min_spread = 9999
  min_day = 0

  day_number.each_with_index do |day, index|
    spread = (max_temps[index] - min_temps[index]).abs

    if spread < min_spread
      min_spread = spread
      min_day = day 
    end
  end

  {day: min_day, spread: min_spread}
end

  result = findMinSpread(weatherDay, weatherMax, weatherMin)



puts "the minimal spread difference is on day:  #{result[:day]}"