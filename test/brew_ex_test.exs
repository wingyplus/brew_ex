defmodule BrewExTest do
  use ExUnit.Case
  doctest BrewEx

  test "greets the world" do
    assert BrewEx.hello() == :world
  end
end
