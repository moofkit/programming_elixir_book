defmodule Exercise_7 do
  def float_to_string(num), do: :erlang.float_to_binary(num, decimals: 2)
end

IO.puts(Exercise_7.float_to_string(7.23451) == "7.23")
IO.puts(System.get_env("PATH"))
IO.puts(Path.extname("simple/test.exs") == ".exs")
IO.puts(inspect(self()))
IO.puts(inspect(File.cwd()))
IO.puts(inspect(System.cmd("whoami", [])))
