# CsvReader

An entry small project to learn elixir. Read, modify and write csv files.

Not gonna lie, I've been coding in elixir three months from now and it was easy but in that moment was kinda hard thinking how I was going to do it.

Compile it and use the only module CsvReader, you can call read and to_map functions.
read function receives a path to the file (I might need to add functionality to call a file outside the binary) and it returns a map with the headers and the content.
to_map receive the object that read returns no merge the headers to the content and returns a list of maps.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `csv_reader` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:csv_reader, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/reading_csv](https://hexdocs.pm/csv_reader).
