# # collections practice vol 2.
#   #begins_with_r
#     Return true if every element of the tools array starts with an "r" and false otherwise. (FAILED - 1)
#     should return false if there's an element that does not begin with r (FAILED - 2)
def begins_with_r(tools)
  tools.all? do |word|
    word.downcase.chr == "r"
  end
end

#   #contain_a
#     return all elements that contain the letter 'a' (FAILED - 3)
def contain_a(collections)
  collections.select{|element| element.include?("a")}
end
#   #first_wa
#     Return the first element that begins with the letters 'wa' (FAILED - 4)
def first_wa(collections)
  collections.find{|element| element.to_s.start_with?("wa")}
end
#   #remove_non_strings
#     remove anything that's not a string from an array (FAILED - 5)
def remove_non_strings(collections)
  collections.reject {|element| element.class != String}
end
#   #count_elements
#     count how many times something appears in an array (FAILED - 6)
def count_elements(collections)
  counts = Hash.new(0)
  collections.collect {|element| counts[element]+=1 }
    counts.collect do |hash, number|
      hash[:count] = number
    end
  counts.keys
end
#   #merge_data
#     combines two nested data structures into one (FAILED - 7)
  def merge_data(keys,values)
    keys.each do |name_hash|
    values.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
  end
#   #find_cool
#     find all cool hashes (FAILED - 8)
def find_cool(collections)
  collections.find_all {|element| element if element.has_value?("cool")}
end

#   #organize_schools
#     organizes the schools by location (FAILED - 9)
def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end
