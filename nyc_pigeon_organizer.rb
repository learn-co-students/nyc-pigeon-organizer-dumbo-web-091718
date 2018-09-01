require "pry"
def nyc_pigeon_organizer(data)
 organized = {}

 data.each do |attributes_key, hash| 
  # p attributes # => color
  # p hash # =>:purple=>["Theo", "Peter ..]
  hash.each do |props, pigeon|
  #  p props #=>    :purple
           #=>    :White
           #=>    :male
           #=>    :subway
  #  p pigeon
     pigeon.each do |name| 
       if !organized.has_key?(name)
          organized[name] = Hash.new
       end 
      # binding pry
       if !organized[name].has_key?(attributes_key) #or .can use include?
           organized[name][attributes_key] = [] #placing every attribute value in a new array 
           organized[name][attributes_key] << props.to_s
    
         else 
           organized[name][attributes_key].push(props.to_s)
      end 

    end 
  end 
  end 
   organized
 end 
# p nyc_pigeon_organizer(data)