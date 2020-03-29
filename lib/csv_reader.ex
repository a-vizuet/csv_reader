defmodule CsvReader do

  def read(filename_to_read) do
    abs_path = Path.absname(filename_to_read)

    case File.read(abs_path) do
      {:ok, file_content} -> handle file_content
      {:error, :enoent} -> IO.puts "File not found"
      {:error, error} -> IO.puts "#{error}"
    end
  end

  defp handle(file_content) do
    parsed_content =
      file_content
      |> String.split("\r")
      |> Enum.map(
        fn str -> str |> String.split(",") end
      )
    headers = parsed_content |> Enum.at(0)
    content = parsed_content |> Enum.drop(1)

    %{headers: headers, content: content}
  end

  def to_map(%{:headers => headers, :content => content}) do
    content
    |> Enum.map(
      fn c -> c |> content_to_map(headers) end
    )
  end

  defp content_to_map(content, headers) do
    content
    |> Enum.with_index
    |> Enum.reduce(%{},
      fn ({v, i}, acc) -> acc |>
        Map.put_new(
          headers
          |> Enum.at(i), v
        )
      end
    )
  end

end
