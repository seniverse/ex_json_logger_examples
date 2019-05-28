defmodule JSONLoggerExamplesTest do
  use ExUnit.Case
  doctest JSONLoggerExamples

  test "greets the world" do
    assert JSONLoggerExamples.hello() == :world
  end
end
