def echo(say)
  say
end

def shout(say)
  say.upcase
end

def repeat(say, num=2)
  return ((say + " ")* num).strip
end

def start_of_word(word, num)
  if num == 1
    return "#{word}"[0]
  else
    return "#{word}"[0,num]
  end
end

def first_word(words)
  # '.split' splits the sentence into an array of words
  # index returns the required word from the array
  return "#{words}".split[0]
end

def titleize(title)
  title_array = title.split
  title_array[0].capitalize!
  title_array.each do |word|
    word.capitalize! if word.length > 3 && word != "over" 
  end
  title_array.join(" ")
end

