list_concat = fn left, right -> left ++ right end
sum = fn a, b, c -> a + b + c end
pair_tuple_to_list = fn {a, b} -> [a, b] end

IO.puts(list_concat.([:a, :b], [:c, :d]) == [:a, :b, :c, :d])
IO.puts(sum.(1, 2, 3) == 6)
IO.puts(pair_tuple_to_list.({1234, 5678}) == [1234, 5678])
