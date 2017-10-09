class Problem
  attr_reader :number1, :number2

  def initialize
    @number1 = rand(1..20).to_f
    @number2 = rand(1..20).to_f
    @operations = ['+', '-', '*', '/']
  end

  def choose_operation
    rand_op = @operations[rand(0..3)]
  end

  def form_problem(player)
    rand_op = choose_operation
    prob = "#{@number1} #{rand_op} #{@number2}"
    puts "#{player}, what is #{@number1} #{rand_op} #{@number2}?"
    ans = eval prob
  end

  def correct?(answer, input)
    if answer - input <= 0.5 && answer - input >= -0.5
      return true
    end
    nil
  end

end




