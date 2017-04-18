# write your code here
def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, times = 2)
  phrase + ((' ' + phrase) * (times - 1))
end

def start_of_word(word, times)
  word = word.split('')
  word.first(times).join('')
end

def first_word(word)
  word.split[0]
end

def titleize(word)
  word_split = word.split(' ')
  little_words = %w[and the over]
  word_split.each_with_index do |wor, i|
    wor[0] = wor[0].upcase if !little_words.include?(wor) || i.zero?
  end
  word_split.join(' ')
end
