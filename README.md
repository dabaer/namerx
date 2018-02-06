# Namerx

Generates prefixed random names for naming computers.

## Installation

This package can be installed
by adding `namerx` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:namerx, "~> 0.1.0"}
  ]
end
```

# Generating Names
If no argument is supplied to the generator, the prefix by default will be `DESKTOP`:

```elixir
iex(1)> Namerx.generate
"DESKTOP-4IR7FQT09"
```

If a prefix is supplied, it will be returned with the generated name:

```elixir
iex(1)> Namerx.generate("SERVER")
"SERVER-4IR7FQT09"
```