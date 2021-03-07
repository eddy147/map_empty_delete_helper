defmodule MapHelper do
  @moduledoc """
  Handy tools if you work with a map.
  """
  @doc """
  Removes tuples where the value is empty
  """
  def removeEmpty(%{} = map) when is_map(map) do
    compactor = fn({k, v}, acc) ->
      cond do
        is_map(v) and Map.has_key?(v, :__struct__) ->
          Map.put_new(acc, k, v)
        is_map(v) and Enum.empty?(v) -> acc
        is_map(v) -> Map.put_new(acc, k, removeEmpty(v))
        is_nil(v) -> acc
        true -> Map.put_new(acc, k, v)
      end
    end
    Enum.reduce(map, %{}, compactor)
  end
end
