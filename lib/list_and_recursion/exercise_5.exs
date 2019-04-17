require Integer

defmodule MyEnum do
  def all?([], _fun), do: true

  def all?([head | tail], fun) do
    fun.(head) and all?(tail, fun)
  end

  def each([], _fun), do: nil

  def each([head | tail], fun) do
    fun.(head)
    each(tail, fun)
  end

  def filter(list, fun, acc \\ [])
  def filter([], _fun, acc), do: Enum.reverse(acc)

  def filter([head | tail], fun, acc) do
    if fun.(head) do
      filter(tail, fun, [head | acc])
    else
      filter(tail, fun, acc)
    end
  end

  def split(list, _count, acc \\ [])

  def split(list, count, acc) when count == 0 do
    [Enum.reverse(acc), list]
  end

  def split([head | tail], count, acc) do
    split(tail, count - 1, [head | acc])
  end

  def take(list, _count, acc \\ [])

  def take(_list, count, acc) when count == 0 do
    Enum.reverse(acc)
  end

  def take([head | tail], count, acc) do
    take(tail, count - 1, [head | acc])
  end
end

IO.puts(MyEnum.all?([2, 4, 6], &Integer.is_even/1) == true)
MyEnum.each(["hello", "world"], fn word -> IO.puts(word) end)
IO.puts(MyEnum.filter([1, 2, 3, 4, 5], &Integer.is_even/1) == [2, 4])
IO.puts(MyEnum.split([1, 2, 3, 4, 5], 3) == [[1, 2, 3], [4, 5]])
IO.puts(MyEnum.take([1, 2, 3, 4, 5], 2) == [1, 2])
