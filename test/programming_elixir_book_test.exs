defmodule ProgrammingElixirBookTest do
  use ExUnit.Case
  doctest ProgrammingElixirBook

  test "greets the world" do
    assert ProgrammingElixirBook.hello() == :world
  end
end
