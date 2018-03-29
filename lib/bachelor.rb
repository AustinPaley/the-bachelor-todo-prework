def get_first_name_of_season_winner(data, season)
contestant_array=data[season]
  contestant_array.each do |hash|
    hash.each do |key, value|
      if value == "Winner"
        return hash["name"].split[0]
      end
    end
  end
end

#The method should return the *first name* of that season's winner.
#**Hint**: you'll need to do some string manipulation to return only the first name of the winning lady.

def get_contestant_name(data, occupation)
  data.keys.each do |season|
    data[season].each do |hash|
      hash.each do |keys, value|
        if value == occupation
          return hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
counter = 0
  data.keys.each do |season|
    data[season].each do |hash|
      hash.each do |keys, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
counter
end

def get_occupation(data, hometown)
  data.keys.each do |season|
    data[season].each do |hash|
      hash.each do |keys, value|
        if value == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
age_array=[]
final_age_array=[]
    data[season].each do |hash|
      hash.each do |keys, value|
        if keys == "age"
          age_array << value
        end
      end
    end
  age_array.each do |string|
    final_age_array << string.to_i
  end
average_age = final_age_array.inject(0){|sum,x| sum + x }.to_f / final_age_array.length
average_age.round
end
