class Pangram

  def self.pangram?(phrase)
    test_phrase = phrase.downcase

    ('a'..'z').each { |c| return false if !test_phrase.include?(c) }
    true  
  end

module BookKeeping
  VERSION = 6
end

