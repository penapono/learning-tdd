module FizzBuzz
  module_function

  def output(limit)
    answer = ''

    (1..limit).each do |number|

      if (number % 3 == 0)
        answer << 'fizz'
      end

      if (number % 5 == 0)
        answer << 'buzz'
      end

      if (number % 3 != 0 && number % 5 != 0)
        answer << number.to_s
      end

      answer << " " if number < limit
    end

    answer
  end
end
