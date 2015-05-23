defmodule PoisonTest.Node do
  defstruct id: nil, key: nil, operator_sym: nil, value: nil
end

defmodule PoisonTest do
  @nodes Code.eval_file("nodes.exs") |> elem(0)

  def bench do
    Enum.map(~w(poison exjsx jiffy)a, &bench/1)
  end

  def bench(fun) do
    us = :timer.tc(fn -> apply(__MODULE__, fun, []) end) |> elem(0)
    ms = us / 1000
    IO.puts("#{fun}: #{ms}ms")
  end

  def poison do
    Poison.encode!(@nodes)
  end

  def exjsx do
    JSX.encode!(@nodes)
  end

  def jiffy do
    :jiffy.encode(@nodes)
  end
end
