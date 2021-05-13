defmodule BrewEx.Formula do
  @callback install() :: no_return()

  @doc false
  defmacro __using__(_opts) do
    quote do
      import Kernel, except: [/: 2]
      import BrewEx.Operator
      import BrewEx.Command, only: [system: 2, cd: 2, pwd: 0, mkdir: 1, bash: 1]
      import BrewEx.Path

      @behaviour BrewEx.Formula
    end
  end
end
