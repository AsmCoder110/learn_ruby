# Defines an arbitrary book
class Book
  attr_writer :title

  def title
    title_split = @title.split(' ')
    conjunctions = %w[and or but nor so for yet whether while]
    articles = %w[a an the]
    prepositions = %w[with at from into during of to in for on by about like over before]

    title_split.each_with_index do |word, i|
      word.capitalize! if (!conjunctions.include?(word) &&
            !articles.include?(word) &&
              !prepositions.include?(word)) || i.zero? || word == 'i'
    end
    title_split.join(' ')
  end
end
