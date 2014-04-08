# def translate(word)
#   if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
#     word + "ay"
#   elsif word[0] != "a" && word[0] != "e" && word[0] != "i" && word[0] != "o" && word[0] != "u" && word[1] != "a" && word[1] != "e" && word[1] != "i" && word[1] != "o" && word[1] != "u"
#     word[2..-1] + word[0,2] + "ay"
#   elsif word[0] != "a" && word[0] != "e" && word[0] != "i" && word[0] != "o" && word[0] != "u"
#     word[1..-1] + word[0,1] + "ay"
#   end
# end

def translate(words)
  alphabets = ("a"..."z").to_a
  vowels = %w[a e i o u]

  consonants = alphabets - vowels

  words_array = words.split

  words_array.each do |word|
    if vowels.include?(word[0])
      return word + "ay"
    elsif word.include?("squ")
      return word[3..-1] + word[0,3] + "ay"
    elsif word.include?("qu")
      return word[2..-1] + word[0,2] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      return word[3..-1] + word[0,3] + "ay"
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      return word[2..-1] + word[0,2] + "ay"
    elsif consonants.include?(words[0])
      return word[1..-1] + word[0,1] + "ay"
    end
  end
  words_array.join(" ")
end