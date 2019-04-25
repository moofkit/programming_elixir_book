defmodule Countdown do
  def sleep(seconds) do
    receive do
    after
      seconds * 1000 -> nil
    end
  end

  def say(text) do
    spawn(fn -> :os.cmd('say #{text}') end)
  end

  def timer do
    Stream.resource(
      fn ->
        {_h, _m, s} = :erlang.time()
        60 - 1 - s
      end,
      fn
        0 ->
          {:halt, 0}

        count ->
          sleep(1)
          {[inspect(count)], count - 1}
      end,
      fn -> nil end
    )
  end
end
