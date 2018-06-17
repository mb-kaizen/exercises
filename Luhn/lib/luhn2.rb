class Luhn2

  def self.is_valid?(number)
    digits = number.to_s.chars.map(&:to_i) 
    puts digits.inspect
    sum = 0
    digits.reverse.each_with_index do |digit, i|
      if i.odd?
        digit = digit*2
          if digit >= 10
            digit = digit - 9
          end        
      end
      sum += digit
    end
    
    if sum % 10 == 0
      true
    else
      false
    end
  end

end