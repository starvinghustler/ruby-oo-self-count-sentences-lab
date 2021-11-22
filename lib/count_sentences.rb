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
    self.split(/\.|\?|\!/).delete_if {|x| x.size < 2}.size     #splits in every point of where delimiter is. 
                                                          #because of spaces and double !, we need to remove conflicting results
                                                          #size turns the indexes into a count
  end
end