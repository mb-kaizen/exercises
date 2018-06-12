class Complement

  def self.of_dna(dna)
    rna = ''

    dna.split("").each do |nucleotide|
      if nucleotide == 'G'
        rna << 'C'
      elsif nucleotide == 'C'
        rna << 'G'
      elsif nucleotide == 'T'
        rna << 'A'
      elsif nucleotide == 'A'
        rna << 'U'
      else
        return ''
      end
    end
    
    return rna

  end
end


