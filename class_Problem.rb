class Problem

  def initialize(player)
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @operations = ['+', '-', '*', '/']
  end

  def choose_operation
    rand_op = @operations[rand(0..3)]
  end

  def form_problem




end




