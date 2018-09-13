def nyc_pigeon_organizer(data)
  # write your code here!
  outer_hash = {}

  data.each do |attributes, data_hash|
    data_hash.each do |more_attributes, name_array|
      name_array.each do |name|

        if outer_hash.keys.include?(name)
          outer_hash[name][attributes] ||= []
          outer_hash[name][attributes] << more_attributes.to_s
        else
          outer_hash[name] = { attributes => [more_attributes.to_s] }
        end
      end
    end
  end
  
  outer_hash
end
