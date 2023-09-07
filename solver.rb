class Solver
  def factorial(num)
    if num < 0
      raise ArgumentError
    end

    if num == 0
      1
    else
      num * factorial(num - 1)
    end
  end
end