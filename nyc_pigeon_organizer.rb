pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |attribute, attribute_info|
    attribute_info.each do |type, pigeons|
      pigeons.each do |pigeon|
        pigeon_list[pigeon] = {} unless pigeon_list.has_key?(pigeon)
        if pigeon_list[pigeon].has_key?(attribute)
          pigeon_list[pigeon][attribute] << type.to_s
        else
          pigeon_list[pigeon][attribute] = []
          pigeon_list[pigeon][attribute] << type.to_s
        end
      end
    end
  end

  return pigeon_list
end
