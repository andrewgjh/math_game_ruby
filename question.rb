class Question 
  attr_reader :prompt, :num1, :num2, :solution
 def initialize(low =1, high =20, operator="+")
  @num1 = rand(low..high)
  @num2 = rand(low..high)
  @prompt = "What is #{num1} #{operator} #{num2}?"
  @solution = get_solution(operator)
 end
 def get_solution(operator)
    case operator
    when "+"
      num1 + num2
    when "-"
      num1 - num2
    when "*"
      num1 * num2
    else 
      nil
    end
  end
end