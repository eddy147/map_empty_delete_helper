# MapHelper

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `map_helper` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:map_helper, "~> 0.1.0"}
  ]
end
```

## Usage
```
result = Eddy147.MapHelper.removeEmpty(%{product: %{category: "45", code: nil}, date: "2021-04-01"})
assert result == %{product: %{category: "45"}, date: "2021-04-01"}
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/map_helper](https://hexdocs.pm/map_helper).

