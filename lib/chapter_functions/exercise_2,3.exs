# say goodbye 'if' statement
fizz_buzz_inner = fn
  0, 0, _ -> "FizzBuzz"
  0, _, _ -> "Fizz"
  _, 0, _ -> "Buzz"
  _, _, num -> num
end

IO.puts(fizz_buzz_inner.(0, 0, 3) == "FizzBuzz")
IO.puts(fizz_buzz_inner.(0, 1, 3) == "Fizz")
IO.puts(fizz_buzz_inner.(1, 0, 3) == "Buzz")
IO.puts(fizz_buzz_inner.(1, 1, 3) == 3)

fizz_buzz = fn
  n -> fizz_buzz_inner.(rem(n, 3), rem(n, 5), n)
end

IO.puts(fizz_buzz.(10) == "Buzz")
IO.puts(fizz_buzz.(11) == 11)
IO.puts(fizz_buzz.(12) == "Fizz")
IO.puts(fizz_buzz.(13) == 13)
IO.puts(fizz_buzz.(14) == 14)
IO.puts(fizz_buzz.(15) == "FizzBuzz")
IO.puts(fizz_buzz.(16) == 16)
