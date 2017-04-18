# write your code here
def translate(word)
  is_capitalized = false
  word_split = word.split(' ')
  word_split.each_with_index do |wor, i|
    is_capitalized = false
    if wor[0] == wor[0].upcase
      is_capitalized = true
      wor[0] = wor[0].downcase
    end

    if wor[0] =~ /a|e|i|o|u/
      word_split[i] += 'ay'
    elsif wor =~ /.*qu/
      consonant_sound = wor.partition(/qu/)
      wor.slice!(0..consonant_sound[1].length + consonant_sound[0].length - 1)
      word_split[i] = wor + consonant_sound[0] + consonant_sound[1] + 'ay'
    else
      consonant_sound = wor.partition(/(a|e|i|o|u)/)
      wor.slice!(0..consonant_sound[0].length - 1)
      word_split[i] = wor + consonant_sound[0] + 'ay'
    end

    word_split[i].capitalize! if is_capitalized
  end
  word_split.join(' ')
end

puts translate('cherry')
