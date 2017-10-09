class Problem
  attr_reader :number1, :number2

  def initialize(player)
    @number1 = rand(1..20).to_f
    @number2 = rand(1..20).to_f
    @operations = ['+', '-', '*', '/']
  end

  def choose_operation
    rand_op = @operations[rand(0..3)]
  end

  def form_problem
    rand_op = choose_operation
    prob = "#{@number1} #{rand_op} #{@number2}"
    puts "What is #{prob}?"
    ans = eval prob
  end

end


p = Problem.new(1)
p.form_problem

