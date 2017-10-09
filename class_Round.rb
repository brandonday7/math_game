class Round
  attr_accessor :turn

  def initialize
  @turn = 0
  end

  def whos_turn
    if @turn % 2 != 0
      return 1
    end
    2
  end

  def game_over?(lives)
    if lives > 0
      return nil
    end
    true
  end

end