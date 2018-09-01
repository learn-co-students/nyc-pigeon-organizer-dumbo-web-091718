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


#________________SOLUTION___________________
# #  def nyc_pigeon_organizer(data)
# #   bird_hash = Hash.new
#   data.each do |attribute, attribute_data| # attribute refers to color, gender, lives ; specification refers to type of color, one of two genders, or place of living
#     attribute_data.each do |specification, birds_arr|
#       birds_arr.each do |bird|
#         !bird_hash.include?(bird) ? (bird_hash[bird] = Hash.new) : nil
#         if !bird_hash[bird].include?(attribute)
#           bird_hash[bird][attribute] = Array.new
#           bird_hash[bird][attribute].push(specification.to_s)
# #         else
# #           bird_hash[bird][attribute].push(specification.to_s)
# #         end
# #       end
# #     end
# #   end
# #   bird_hash
# # end
# # nyc_pigeon_organizer(data)