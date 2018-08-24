# your code goes here
def begins_with_r(tools)
  tools.each do |element|
    if element[0] != 'r'
      return false
    end
  end
  return true
end

def contain_a(elements)
  a_elements = Array.new
  elements.each do |element|
    if element['a'] == 'a'
      a_elements.push(element)
    end
  end
  a_elements
end

def first_wa(elements)
  elements.each do |element|
    if element[0,2] == 'wa'
      return element
    end
  end
end

def remove_non_strings(array)
  str_array = Array.new
  array.each do |element|
    if element.class == String
      str_array.push(element)
    end
  end
  str_array
end

def count_elements(names)
  name_and_count_array = Array.new
  name_compare = names

  names.each do |name_element|
    count = 0
    name_compare.each do |name_compare_element|
      if name_element == name_compare_element
        count += 1
      end
    end
    name_compare.shift
    name_and_count_array.push({:name => name_element[:name], :count => count})
  end
  name_and_count_array
end

def merge_data(data1, data2)
  new_hash = Array.new
  temp_hash = Hash.new
  index = 0
  data1.each do |hash|
    data2.each do |hash2|
      hash2.each do |key, attributes|
        if key == hash[:first_name]
          temp_hash = attributes
        end
      end
      temp_hash[:first_name] = hash[:first_name]
    end
    new_hash[index] = temp_hash
    index += 1
  end
  puts new_hash
  new_hash
end

def find_cool(data)
  cool_array = Array.new
  index = 0
  data.each do |hash|
    hash.each do |key, attribute|
      if key == :temperature && attribute == "cool"
        cool_hash = hash
        cool_array[index] = hash
        index += 1
      end
    end
  end
  cool_array
end

def organize_schools(data)
  new_data = Hash.new

  data.each do |key, hash|

    hash.each do |location, value|
      if new_data[value] == nil
        new_data[value] = [];
      end
      new_data[value].push(key)
    end
  end
  new_data
end
