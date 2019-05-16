opal_filter "Rational" do
  fails "Rational#marshal_dump dumps numerator and denominator"
  fails "Rational#to_r raises TypeError trying to convert BasicObject" # NoMethodError: undefined method `nil?' for BasicObject
  fails "Rational#round with half option returns a Rational when the precision is greater than 0" # ArgumentError: [Rational#round] wrong number of arguments(2 for -1)
  fails "Rational#round with half option returns an Integer when precision is not passed" # TypeError: not an Integer
  fails "Rational#round with half option raise for a non-existent round mode" # TypeError: not an Integer
  fails "Rational#to_r fails when a BasicObject's to_r does not return a Rational" # NoMethodError: undefined method `nil?' for BasicObject
  fails "Rational#to_r works when a BasicObject has to_r" # NoMethodError: undefined method `nil?' for BasicObject
end
