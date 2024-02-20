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


#------------------------------

team = [
  {name: "Arsenal", goals_for: 79, goals_against: 36},
  {name: "Liverpool", goals_for: 67, goals_against: 30},
  {name: "Manchester_U", goals_for: 87, goals_against: 45},
  {name: "Newcastle", goals_for: 74, goals_against: 52},
  {name: "Leeds", goals_for: 53, goals_against: 37},
  {name: "Chelsea", goals_for: 66, goals_against: 38},
  {name: "West_Ham", goals_for: 48, goals_against: 57},
  {name: "Aston_Villa", goals_for: 46, goals_against: 47},
  {name: "Tottenham", goals_for: 49, goals_against: 53},
  {name: "Blackburn", goals_for: 55, goals_against: 51},
  {name: "Southampton", goals_for: 46, goals_against: 54},
  {name: "Middlesbrough", goals_for: 35, goals_against: 47},
  {name: "Fulham", goals_for: 36, goals_against: 44},
  {name: "Charlton", goals_for: 38, goals_against: 49},
  {name: "Everton", goals_for: 45, goals_against: 57},
  {name: "Bolton", goals_for: 44, goals_against: 62},
  {name: "Sunderland", goals_for: 29, goals_against: 51},
  {name: "Ipswich", goals_for: 41, goals_against: 64},
  {name: "Derby", goals_for: 33, goals_against: 63},
  {name: "Leicester", goals_for: 30, goals_against: 64},
]

def minDifference(team)

  (team[:goals_for] - team[:goals_against]).abs
end

min_difference_team = team.min_by {|team| minDifference(team)}

puts "the team with the smallest difference is: #{min_difference_team[:name]} with a difference to: #{minDifference(min_difference_team)} goals"

