dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, dictionary)
  result = Hash.new(0)
  word = word.downcase

  dictionary.each do |substring|
    count = word.scan(substring).length
    result[substring] += count if count > 0
  end

  puts result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)