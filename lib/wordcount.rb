class String

  def word_count(word_to_check)

    word_frequency = 0
    sentence = self.downcase.scan(word_to_check)

    sentence.each do |word_check|

      if word_check.eql?("") || word_to_check.eql?("")
        word_frequency = 0

      elsif sentence.include?(word_to_check)
        word_frequency += 1
      end
    end
    word_frequency
  end
end
