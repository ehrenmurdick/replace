class Replace
  def self.remove_duplicate_words(text)
    text = text.dup

    word_counts = Hash.new(0)
    text.downcase.scan(/\w+/) do |match|
      word_counts[match] += 1
    end

    word_counts.each do |word, count|
      if count > 1
        text.gsub!(/#{word}/i, '?')
      end
    end

    text
  end
end
