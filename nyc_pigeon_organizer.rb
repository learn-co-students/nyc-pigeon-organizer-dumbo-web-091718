def nyc_pigeon_organizer(data)
  data.each do |attributes_Key, hash| 
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
          organized[name] = name
       end 
       if !organized.has_key?(attributes_Key)
           organized[name] = {}
           organized[name][attributes_Key] = attributes_Key
       end 
       if !organized.has_key?(props)
           organized[name][attributes_Key] = []
           organized[name][attributes_Key] << props
      end 

    end 
  end 
  p organized
 end 

end