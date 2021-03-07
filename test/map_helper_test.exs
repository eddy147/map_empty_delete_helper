defmodule MapHelperTest do
  use ExUnit.Case
  doctest MapHelper

  test "greets the world" do
    assert MapHelper.hello() == :world
  end
end
