defmodule MyList do
  def span(from, to) do
    span(from, to - 1, [to])
  end

  def span(from, to, []) when from == to do
    [to | list]
  end

  def span(from, to, list) do
    span(from, to - 1, [to | list])
  end
end

IO.puts(MyList.span(2, 5) == [2, 3, 4, 5])
# IO.puts(MyList.span(5, 5) == [2, 3, 4, 5]) # TODO: fix infity loop
