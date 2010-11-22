class Replace
  def self.remove_duplicate_words(text)
    word_counts = Hash.new(0)
    text.downcase.scan(/\w+/) do |match|
      word_counts[match] += 1
    end

    p word_counts
  end
end
