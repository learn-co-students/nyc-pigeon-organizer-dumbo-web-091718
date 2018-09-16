require 'pry'
def nyc_pigeon_organizer(data)
  pigeon_dic={}
  data.each do |attri_k, attri_d|
    attri_d.each do |a_k, name_a|
      name_a.each do |pigeon|
        if pigeon_dic.include?(name_a) || pigeon_dic[name_a].include?(attri_k)
           pigeon_dic[name_a][attri_k] << a_k.to_s
        else
          pigeon_dic[name_a].merge!{attri_k => [a_k.to_s]} || pigeon_dic[name_a] = {attri_k => [a_k.to_s]} 
        end
  return pigeon_dic
      end
    end
  end  
end 
  