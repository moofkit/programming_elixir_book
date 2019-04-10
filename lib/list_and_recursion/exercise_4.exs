defmodule MyList do
  def span(from, to) when from > to, do: []

  def span(from, to) do
    [from | span(from + 1, to)]
  end
end

IO.puts(MyList.span(2, 5) == [2, 3, 4, 5])
IO.puts(MyList.span(5, 5) == [5])
