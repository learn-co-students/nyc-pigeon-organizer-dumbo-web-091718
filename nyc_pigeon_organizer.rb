def nyc_pigeon_organizer(data)
  hash_arr = []
     
  data.each do |keys, info| 
    info.each do |k, v|
      v.each do |name|

        feathers = []
        data[:color].keys.each do |i| 
          if data[:color][i].include?(name)
            feathers << i.to_s
          end
        end

        sex = []
        data[:gender].keys.each do |j| 
          if data[:gender][j].include?(name)
            sex << j.to_s
          end
        end

        home = []
        data[:lives].keys.each do |k| 
          if data[:lives][k].include?(name)
            home << k
          end
        end
        
        hash_arr << {name => {:color => feathers, :gender => sex, :lives => home}}
      end
    end  
  return hash_arr.reduce Hash.new, :merge
  end
end