def begins_with_r(array)
  r_list = []
  array.each do |word|
    if word.start_with?("r")
       r_list.push(word)
     end
  end
  if r_list.length == array.length
    return true
  else
   false
  end
end

def contain_a(array)
  array.select do |item|
    item.include?("a")
  end
end

def first_wa(array)
  array.find do |item|
    item[0] == "w" && item[1] == "a"
  end
end

def remove_non_strings(array)
  array.delete_if do |item|
    !item.is_a?(String)
  end
end

def count_elements(array)
  new_arr = []
  array.uniq.each do |item|
    new_arr << {
      name: item[:name],
      count: array.count(item)
    }
  end
  new_arr
end

#TODO learn hashes. test fails because this code doesn't work with hashes.

def merge_data(keys, data)
  keys.each do |elem|
    data << elem
    data.each do |i|
      merged_data << i
    end
  end
  merged_data
end
