## FizzBuzz Test : http://wiki.c2.com/?FizzBuzzTest

# exs files
# elixir

# Anonymous functions
# Anonymous function invocation
# Pattern matching
# Function clauses
# Range
# Enum Module
# Enum.to_list, Enum.map Enum.match
# IO.puts
# The |> operator
# Functions as arguments
# Function clause order

get = fn
(0,0,_) -> "FizzBuzz"
(0, _, _) -> "Fizz"
(_, 0, _) -> "Buzz"
(_,_,c) -> c
end

fizz_buzz = fn 
  x -> get.(rem(x,3), rem(x,5), x) 
end

first_hundered = 1..100

IO.puts first_hundered
|> Enum.to_list()

first_hundered
|> Enum.to_list() 
|> Enum.map(fizz_buzz) 
|> Enum.each(fn x-> IO.puts x end)





