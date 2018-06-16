module Luhn

  def self.is_valid?(number)
    digits = number.to_s.chars.map(&:to_i) 
    sum = 0
    
    digits.reverse.each_with_index do |digit, i|
      digit *= 2 if i.odd?
      digit -= 9 if digit >= 10 
      sum += digit
    end

    sum % 10 == 0
  end

end
