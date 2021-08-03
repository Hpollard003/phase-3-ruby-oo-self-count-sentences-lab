require 'pry'

class String

  def sentence?
    self.end_with?('.')
  end

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    # p self.count('.') + self.count('?') + self.count('!')
    self.split(/\.|\?|!/).filter { |sentence| !sentence.empty? }.size
  end
end