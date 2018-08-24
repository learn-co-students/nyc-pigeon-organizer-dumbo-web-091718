def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}

  all_pigeon_names = []
  unique_pigeon_names = {}

  theo_info = []
  peter_info = []
  lucky_info = []
  ms_k_info = []
  queenie_info = []
  andrew_info = []
  alex_info = []

  data[:color].each do |key, value|
    data[:color][key].each do |value|
      all_pigeon_names << value
    end
    unique_pigeon_names = all_pigeon_names.uniq
  end
  pigeon_list = Hash[unique_pigeon_names.collect{|element| [element, ""]}]

  data.each do |key, value|
    value.each do |hash|
      if hash[1].include?("Theo")
        theo_info << hash[0]
      end
    end
  end

  data.each do |key, value|
    value.each do |hash|
      if hash[1].include?("Peter Jr.")
        peter_info << hash[0]
      end
    end
  end

  data.each do |key, value|
    value.each do |hash|
      if hash[1].include?("Lucky")
        lucky_info << hash[0]
      end
    end
  end

  data.each do |key, value|
    value.each do |hash|
      if hash[1].include?("Ms. K")
        ms_k_info << hash[0]
      end
    end
  end

  data.each do |key, value|
    value.each do |hash|
      if hash[1].include?("Queenie")
        queenie_info << hash[0]
      end
    end
  end

  data.each do |key, value|
    value.each do |hash|
      if hash[1].include?("Andrew")
        andrew_info << hash[0]
      end
    end
  end

  data.each do |key, value|
    value.each do |hash|
      if hash[1].include?("Alex")
        alex_info << hash[0]
      end
    end
  end

  theo_strings = ["Theo"]
  peter_strings = ["Peter Jr."]
  lucky_strings = ["Lucky"]
  ms_k_strings = ["Ms. K"]
  queenie_strings = ["Queenie"]
  andrew_strings = ["Andrew"]
  alex_strings = ["Alex"]

  theo_info.collect do |item|
    theo_strings << item.to_s
  end

  peter_info.collect do |item|
    peter_strings << item.to_s
  end

  lucky_info.collect do |item|
    lucky_strings << item.to_s
  end

  ms_k_info.collect do |item|
    ms_k_strings << item.to_s
  end

  queenie_info.collect do |item|
    queenie_strings << item.to_s
  end

  andrew_info.collect do |item|
    andrew_strings << item.to_s
  end

  alex_info.collect do |item|
    alex_strings << item.to_s
  end

  pigeon_list.each do |key, value|
    pigeon_list[key] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  end

  pigeon_list.each do |key, value|
    if theo_strings.include?(key)
      pigeon_list[key][:color] << theo_strings[1]
      pigeon_list[key][:color] << theo_strings[2]
      pigeon_list[key][:gender] << theo_strings[3]
      pigeon_list[key][:lives] << theo_strings[4]
    elsif peter_strings.include?(key)
      pigeon_list[key][:color] << peter_strings[1]
      pigeon_list[key][:color] << peter_strings[2]
      pigeon_list[key][:gender] << peter_strings[3]
      pigeon_list[key][:lives] << peter_strings[4]
    elsif lucky_strings.include?(key)
      pigeon_list[key][:color] << lucky_strings[1]
      pigeon_list[key][:gender] << lucky_strings[2]
      pigeon_list[key][:lives] << lucky_strings[3]
    elsif ms_k_strings.include?(key)
      pigeon_list[key][:color] << ms_k_strings[1]
      pigeon_list[key][:color] << ms_k_strings[2]
      pigeon_list[key][:gender] << ms_k_strings[3]
      pigeon_list[key][:lives] << ms_k_strings[4]
    elsif queenie_strings.include?(key)
      pigeon_list[key][:color] << queenie_strings[1]
      pigeon_list[key][:color] << queenie_strings[2]
      pigeon_list[key][:gender] << queenie_strings[3]
      pigeon_list[key][:lives] << queenie_strings[4]
    elsif andrew_strings.include?(key)
      pigeon_list[key][:color] << andrew_strings[1]
      pigeon_list[key][:gender] << andrew_strings[2]
      pigeon_list[key][:lives] << andrew_strings[3]
    elsif alex_strings.include?(key)
      pigeon_list[key][:color] << alex_strings[1]
      pigeon_list[key][:color] << alex_strings[2]
      pigeon_list[key][:gender] << alex_strings[3]
      pigeon_list[key][:lives] << alex_strings[4]
    end
  end
  return pigeon_list
end
