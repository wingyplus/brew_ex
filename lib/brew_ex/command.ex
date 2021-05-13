defmodule BrewEx.Command do
  def system(command, args) do
    System.cmd(command, args, cd: pwd(), into: IO.stream(:stdio, :line))
  end

  def cd(path, fun) do
    File.cd!(path, fun)
  end

  def pwd() do
    File.cwd!()
  end

  def mkdir(path) do
    File.mkdir!(path)
  end

  def bash(command) do
    system("bash", ["-c", command])
  end
end
