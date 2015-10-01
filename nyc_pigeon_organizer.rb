require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_names = data.values.map do |grouping|
    grouping.values
  end.flatten.uniq 
  attributes = data.keys 
  initial_structure = pigeon_names.each_with_object({}) do |pigeon, hash|
    object_hash = attributes.each_with_object({}) do |attribute, obj|
      obj[attribute] = []
    end
    hash[pigeon] = object_hash
  end
    attributes.each do |attribute|
    data[attribute].each do |color, pigeons|
      pigeons.each do |pigeon|
        initial_structure[pigeon][attribute] << color.to_s
      end.uniq
    end
  end
  puts initial_structure
  initial_structure
end


##### COMMENTED CODE #####

# def nyc_pigeon_organizer(data)
#   # 1. collect pigeon names from all parts of the orig data
#   pigeon_names = data.values.map do |grouping|
#     # this is still the return value
#     grouping.values
#   end.flatten.uniq # the same as pigeon_list = pigeon_list.flatten.uniq
  
#   # 2. get attributes for each pigeon
#   attributes = data.keys # [color, gender, lives]



#   # 4. start building the new hash, using the details we created above
#   # the object you are creating is whatever is in () after object / also represented by second iterator
#   initial_structure = pigeon_names.each_with_object({}) do |pigeon, hash|
#     # iterate through the attributes
#     # we want to return a hash, so use each_with_object
#     # obj is the hash object
#      object_hash = attributes.each_with_object({}) do |attribute, obj|
#   # the key of the new hash is an attribute and the value is an empty array
#         obj[attribute] = []
#       end
#     hash[pigeon] = object_hash
#   end

#   # so far we have this:
#    #  {"Theo"=>{:color=>[], :gender=>[], :lives=>[]},
#    # "Peter Jr."=>{:color=>[], :gender=>[], :lives=>[]},
#    # "Lucky"=>{:color=>[], :gender=>[], :lives=>[]},
#    # "Ms. K"=>{:color=>[], :gender=>[], :lives=>[]},
#    # "Queenie"=>{:color=>[], :gender=>[], :lives=>[]},
#    # "Andrew"=>{:color=>[], :gender=>[], :lives=>[]},
#    # "Alex"=>{:color=>[], :gender=>[], :lives=>[]}}
  
#     # 5. now populate the initial structure with pigeon-specific data
#    attributes.each do |attribute|
   
#     data[attribute].each do |color, pigeons|
#       # |purple, ['theo', 'freddie']|
#       pigeons.each do |pigeon|
#         initial_structure[pigeon][attribute] << color.to_s
#       end.uniq
#     end
#   end


#   puts initial_structure
#   initial_structure


# end

