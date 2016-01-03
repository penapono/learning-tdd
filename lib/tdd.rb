# Always consult the style-guide for help
# https://github.com/bbatsov/ruby-style-guide

module TDD
  module_function

  def do_tdd
    do_something
    'TDD'
  end

  def do_something
    1
  end

  def do_param(param = 0)
    param
  end
end
