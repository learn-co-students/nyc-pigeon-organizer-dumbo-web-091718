def nyc_pigeon_organizer(data)
  pigeon_hash = {}
  pigeon_names = []
  
  data.each do |category, value|
    value.each do |key, names|
      pigeon_names.push(names)
    end 
  end 
  pigeon_names = pigeon_names.flatten.uniq
  
  pigeon_names.each do |name| 
    pigeon_hash[name] = {}
  
  data.each do |category, values|
    pigeon_hash[name][category] = []
    
    values.each do |key, names|
      if names.include?(name)
        pigeon_hash[name][category].push(key.to_s)
      end 
    end 
  end 
end 
  pigeon_hash
end

