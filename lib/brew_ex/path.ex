defmodule BrewEx.Path do
  import Kernel, except: [/: 2]
  import BrewEx.Operator

  @doc """
  BrewEx binary path.
  """
  def bin do
    prefix() / "bin"
  end

  @doc """
  BrewEx build path.
  """
  def buildpath do
    prefix() / "buildpath"
  end

  @doc """
  BrewEx path prefix.
  """
  def prefix do
    System.user_home() / "brew_ex"
  end
end
