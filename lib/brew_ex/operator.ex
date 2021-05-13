defmodule BrewEx.Operator do
  def left / right do
    Path.join([left, right])
  end
end
