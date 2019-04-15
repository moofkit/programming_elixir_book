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

  def filter([], _fun), do: []

  def filter([head | tail], fun) do
    [
      if fun.(head) do
        head
      else
        nil
      end
      | filter(tail, fun)
    ]
  end
end

IO.puts(MyEnum.all?([2, 4, 6], &Integer.is_even/1) == true)
MyEnum.each(["hello", "world"], fn word -> IO.puts(word) end)
IO.puts(inspect(MyEnum.filter([1, 2, 3, 4, 5], &(&1 > 3))))
