defmodule Golang do
  use BrewEx.Formula

  def install do
    system "git", ["clone", "--depth", "1", "https://go.googlesource.com/go.git", buildpath() / "go"]
    cd buildpath() / "go" / "src", fn ->
      bash "./make.bash"
    end
  end
end
