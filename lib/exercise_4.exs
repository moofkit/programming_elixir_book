with_prefix = fn
  prefix ->
    fn
      name -> "#{prefix} #{name}"
    end
end

mrs = with_prefix.("Mrs")

IO.puts(mrs.("Smith") == "Mrs Smith")
IO.puts(with_prefix.("Elixir").("Rocks") == "Elixir Rocks")
