require "pry"

def nyc_pigeon_organizer(data)
  new_hash = {}
  names = data[:color].values.each_with_object([]) {|x, a| a << x}.flatten
  new_hash = names.each_with_object({}) {|n,h| h[n] = data.keys.each_with_object({}) {|k,a| a[k] = data[k].map {|y,f| 
    if f.include?(n)
      y.to_s
    else
      []
    end
  }.flatten}}
  #binding.pry
end
