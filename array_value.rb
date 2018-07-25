# a = 1, A = 27
# Given an array of mixed integers and strings, return the sum of the values of the array

class Alphabet
  attr_reader :value_array, :alphabet, :value_alphabet 
  attr_accessor :alphabet_hash

  def initialize(value_array)
    @value_array = value_array
    @alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
    @value_alphabet = alphabet.each_with_index.map { |letter, i| [letter, i+1] } 
    @alphabet_hash = {}
  end

  # Was pressed on time and couldn't find the method to create a hash with 
  # the corresponding index as key value pairs so I build the method. 
  # I know there must be a more efficient way, will refactor later.
  def create_hash_with_index
    value_alphabet.each do |element|
      alphabet_hash[element[0]] = element[1]
    end
    alphabet_hash
  end

  def arr_value_iterative
    count = 0

    value_array.each do |element|
      if element.is_a? Integer
        count += element
      else
        element.split("").each do |letter|
          count += alphabet_hash[letter].to_i
        end
      end    
    end
    return count
  end

  def arr_value_recursive(i=0, count=0)
      return count if i == value_array.size 

      if value_array[i].is_a? Integer
        count += value_array[i]
      else
        value_array[i].split("").each do |letter|
          count += alphabet_hash[letter].to_i
        end
      end

    arr_value_recursive(i+1, count)
  end

end

value_array = [1, 'all', 4, 53, 'Cats', 24, 'Bilbo Swaggins', 12, 74, 'Wowwie', 23, 60, 13, 46, 'That is amazing']

first_array = Alphabet.new(value_array)
first_array.create_hash_with_index
first_array.arr_value_iterative
first_array.arr_value_recursive