# Helper methods.
def get_pigeon_color(pigeon_data, pigeon_name)
  pigeon_colors = {}
  colors = []
  pigeon_data[:color].each do |color, owner|
    owner.each { |bird| colors << color.to_s if bird == pigeon_name }
  end
  colors
end

def get_pigeon_location(pigeon_data, pigeon_name)
  pigeon_data[:lives].each do |location, pigeon_names|
    pigeon_names.each { |name| return [location] if name == pigeon_name } 
  end
end

def get_pigeon_gender(pigeon_data, pigeon_name)
  pigeon_data[:gender].each do |gender, pigeon_names|
    pigeon_names.each { |name| return [gender.to_s] if name == pigeon_name }
  end
end

def get_pigeon_names(data)
  names = []
  data.each { |attributes, info| info.each { |data, val| names << val } }
  names.flatten.uniq
end


def nyc_pigeon_organizer(data)
  pigeon_list = {}
  get_pigeon_names(data).each do |name|
    pigeon_list[name] = {
      color:  get_pigeon_color(data, name),
      gender: get_pigeon_gender(data, name),
      lives:  get_pigeon_location(data, name)
    }
  end
  pigeon_list
end