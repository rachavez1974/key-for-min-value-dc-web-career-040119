# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

  

 ikea = {:blake => 500, :ashley => 2, :adam => 1}
def key_for_min_value(name_hash)
  value_array = []
  key = ""


  if name_hash.empty?
    return nil
  else
    value_array = name_hash.collect { |key, value| value  }
      for i in 0..value_array.length - 1
        min = i
        j = i + 1
          (j..value_array.length - 1).each do |n| 
            if value_array[n] < value_array[min]
              min = n
              hold_value = value_array[i]
              value_array[i] = value_array[min]
              value_array[min] = hold_value
            end
          end
      end
      name_hash.collect do |key, value|
       if value_array.first == value 
        return key
       end
     end
  end
  
end

puts key_for_min_value(ikea)

