def substrings(word, dictionary)
  result = Hash.new(0)
  word = word.downcase

  dictionary.each do |substring|
    count = word.scan(substring).length
    result[substring] += count if count >0
  end

  result
end
