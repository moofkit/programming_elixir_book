defmodule Chop do
  def mediana(a, b) do
    div(a + b, 2)
  end

  def guess(actual, min..max) do
    guess_internal(actual, min..max, mediana(min, max))
  end

  def guess_internal(actual, min.._max, guess_num) when guess_num > actual do
    IO.puts("is it #{guess_num}")
    guess_internal(actual, min..guess_num, mediana(min, guess_num))
  end

  def guess_internal(actual, _min..max, guess_num) when guess_num < actual do
    IO.puts("is it #{guess_num}")
    guess_internal(actual, guess_num..max, mediana(max, guess_num))
  end

  def guess_internal(actual, _, guess_num) when actual == guess_num do
    IO.puts("#{guess_num}")
    guess_num
  end
end

IO.puts(Chop.guess(273, 1..1000) == 273)
