require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    puts self.split(/\.|\?|!/).filter{|sentence| !sentence.empty?}.size
  end
end
"Hello! How was ur day. Will u go?".count_sentences
#binding.pry