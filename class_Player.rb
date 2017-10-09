class Player
  attr_reader :name
  attr_accessor :lives, :questions_correct

  def initialize(name)
    @name = name
    @lives = 3
    @questions_correct = 0
  end

  def wrong_answer
    @lives -= 1
  end

end