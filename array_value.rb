# a = 1, A = 27
# Given an array of mixed integers and strings, return the sum of the values of the array

class Alphabet
  attr_accessor :value_array, :alphabet, :value_alphabet, :alphabet_hash

  def initialize(value_array)
    @value_array = value_array
    @alphabet = ('a'..'z').to_a + ('A'..'Z').to_a
    @value_alphabet = alphabet.each_with_index.map { |letter, i| [letter, i+1] } 
    @alphabet_hash = {}
  end

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
    p count
  end

end

value_array = [1, 'all', 4, 53, 'Cats', 24, 'Bilbo Swaggins', 12, 74, 'Wowwie', 23, 60, 13, 46, 'That is amazing']

first_array = Alphabet.new(value_array)
first_array.create_hash_with_index
first_array.arr_value_iterative