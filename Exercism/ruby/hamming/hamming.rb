class Hamming

  def self.compute(strand1, strand2)  
    raise ArgumentError.new if strand1.length != strand2.length
    return 0 if strand1 == strand2
   
    distance = 0

    strand1.length.times do |index|
      distance += 1 unless strand1[index] == strand2[index]
    end
    
    return distance       
  end

end