#find_missing Class
#
#Description: This class has methods for analyzing a sequence of numbers and finding the missing element based on consecutive differences. 
#It includes custom methods for iterating over consecutive pairs, applying a block to each element, and finding the maximum element in an array based on a block. 
#
#Authors: Ben Brindley,
#Date: Mon 27 Nov 2023 05:35:27 PM MDT


#custom method for iterating over consecutive pairs in an array
# 
#parameters
#array - an array to iterate over
#size - the size of each consecutive pair
#
#returns
#an array containing the result of applying the block to each consecutive pair
def custom_each_cons(array, size)
    result = []
    (0..array.size - size).each do |i|
        last_element = (i + size) == array.size ? array.last : array[i + size]
        result << yield(array[i], last_element)
    end
    result
  end

#custom method for applying a block to each element in an array
#
#parameters
#array - an array to iterate over
#
#returns
#an array containing the result of applying the block to each element
def custom_map(array)
    result = []
    array.each { |element| result << yield(element) }
    result
end

#custom method for finding the maximum element in an array based on a block
#
#parameters
#array - an array to iterate over
#
#returns
#the maximum element in the array based on the block
def custom_max_by(array)
    return nil if array.empty?
  
    max_element = array.first
    max_value = yield(max_element)
  
    array.each do |element|
        current_value = yield(element)
        if current_value > max_value
        max_element = element
        max_value = current_value
        end
    end
  
    max_element
end

#find the missing element in a sequence based on consecutive differences
#
#parameters
#sequence - an array representing the sequence
#
#prints
#the missing element in the sequence
def find_missing(sequence)
    #calculate consecutive differences in the sequence
    consecutive = custom_each_cons(sequence, 2) { |a, b| b - a }

    #find the most common difference
    sequence_difference = custom_max_by(consecutive) { |n| consecutive.count(n) }

    #find the pair with the missing element
    missing_between = custom_each_cons(consecutive, 1) { |a, b| a if (b - a) != sequence_difference }

    #calculate the missing element
    missing_element = missing_between.first + sequence_difference

    #print the result
    puts missing_element.nil? ? sequence.last + sequence_difference : missing_element
end

#testing find_missing
find_missing([2, 4, 6, 10]) 