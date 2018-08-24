require 'pry'

def nyc_pigeon_organizer(data)
  new_hash={}
  data.each { |category, category_hash|
    category_hash.each { |key, array_values|
        array_values.each { |bird_name|
          if new_hash.include?(bird_name)
            if new_hash[bird_name].include?(category)
              new_hash[bird_name][category] << key.to_s 
            else 
            new_hash[bird_name].merge!({category => [key.to_s]})
            end 
          else
            new_hash[bird_name]= {category => [key.to_s]}
          end
        }
    }
  }  
  new_hash 
end