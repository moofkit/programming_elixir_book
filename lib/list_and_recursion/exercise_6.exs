defmodule MyEnum do
  def flatten(list), do: Enum.reverse(_flatten(list, []))
  def _flatten([], acc), do: acc

  def _flatten([head | tail], acc) when is_list(head) do
    _flatten(tail, _flatten(head, acc))
  end

  def _flatten([head | tail], acc) do
    _flatten(tail, [head | acc])
  end
end

IO.puts(MyEnum.flatten([1, [2, 3, 4, [5]], [[6]]]) == [1, 2, 3, 4, 5, 6])
