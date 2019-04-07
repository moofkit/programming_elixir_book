defmodule MyList do
  def mapsum([], _func), do: 0

  def mapsum([head | tail], func) do
    func.(head) + mapsum(tail, func)
  end

  def mymax([]), do: nil
  def mymax([head]), do: head

  def mymax([head | tail]) do
    max(mymax(tail), head)
  end

  def ceasar([], _inc), do: []

  def ceasar([head | tail], inc) do
    [rem(head + inc - ?a, ?z - ?a + 1) + ?a | ceasar(tail, inc)]
  end
end

IO.puts(MyList.mapsum([1, 2, 3], &(&1 * &1)) == 14)
IO.puts(MyList.mymax([23, 42, 5, 29, -3, 58, 0]) == 58)
IO.puts(MyList.ceasar('ryvkve', 13) == 'elixir')
