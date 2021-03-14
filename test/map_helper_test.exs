defmodule MapHelperTest do
  use ExUnit.Case
  doctest Eddy147.MapHelper
  alias Eddy147.MapHelper

  test "do nothing if no empty values found" do
    result = MapHelper.removeEmpty(%{})
    assert result == %{}
  end

  test "do nothing if the map does not have any empty values" do
    map = %{category: "45", code: "YS1U"}
    result = MapHelper.removeEmpty(%{category: "45", code: "YS1U"})
    assert result == map
  end

  test "remove an empty value" do
    result = MapHelper.removeEmpty(%{category: "45", code: nil, date: "2021-04-01"})
    assert result == %{category: "45", date: "2021-04-01"}
  end

  test "remove an empty value multiple level map" do
    result = MapHelper.removeEmpty(%{product: %{category: "45", code: nil}, date: "2021-04-01"})
    assert result == %{product: %{category: "45"}, date: "2021-04-01"}
  end
end
