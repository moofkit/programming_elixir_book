long_map = Enum.map([1, 2, 3, 4], fn x -> x + 2 end)
long_each = Enum.each([1, 2, 3, 4], fn x -> IO.inspect(x) end)

short_map = Enum.map([1, 2, 3, 4], &(&1 + 2))
short_each = Enum.each([1, 2, 3, 4], &IO.inspect(&1))

IO.puts(long_map == short_map)
IO.puts(long_each == short_each)
