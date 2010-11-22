module Replace
  def self.remove_duplicate_words(text)
    text = text.dup

    duplicated_words = count_words(text).reject do |_word, count|
      count <= 1
    end

    duplicated_words.each do |word, count|
      text.gsub!(/\b#{word}\b/i, '?')
    end

    text
  end

  private
  def self.count_words(text)
    word_counts = Hash.new(0)
    text.downcase.scan(/\w+/) do |match|
      word_counts[match] += 1
    end
    word_counts
  end
end
