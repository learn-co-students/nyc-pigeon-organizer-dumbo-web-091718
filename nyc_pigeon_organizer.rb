def nyc_pigeon_organizer(data)
  new_hash ={}
  data.each do |info, values|
    values.each do |attribute, name|
      name.each do |pigeon|
        if !new_hash.include?(pigeon)
          new_hash[pigeon] ={}
        end
      if !new_hash[pigeon].include?(info)
        new_hash[pigeon][info] = []
      end
      if !new_hash[pigeon][info].include?(attribute)
        new_hash[pigeon][info] << attribute.to_s
      end
    end
  end
end
  new_hash
end
