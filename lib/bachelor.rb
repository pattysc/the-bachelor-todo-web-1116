#{"season 30":
#              [{"name": "Beth Smalls", "age": "26"}, {"name": "Becca Tilley", "age": "24"}]
#}
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestanthash|
    if contestanthash["status"] == "Winner"
      return contestanthash["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.values.each do |contestanthashes|
    contestanthashes.each do |contestanthash|
    	if contestanthash["occupation"] == occupation
    		return contestanthash["name"]
    	end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.values.each do |contestanthashes|
    contestanthashes.each do |contestanthash|
    	if contestanthash["hometown"] == hometown
    		counter += 1
    	end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.values.each do |contestanthashes|
    contestanthashes.each do |contestanthash|
    	if contestanthash["hometown"] == hometown
    		return contestanthash["occupation"]
    	end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0.0
  contestants = 0.0
  data[season].each do |contestanthash|
    age += contestanthash["age"].to_i
    contestants += 1
  end
  return (age/contestants).round
end
