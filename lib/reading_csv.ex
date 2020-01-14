defmodule ReadingCsv do

  def read(filename_to_read) do
    abs_path = Path.absname(filename_to_read)

    case File.read(abs_path) do
      {:ok, file_content} -> handle file_content
      {:error, :enoent} -> IO.puts "File not found"
      {:error, error} -> IO.puts "#{error}"
    end
  end

  def handle(file_content) do
    handled_content = IO.binwrite file_content

    IO.puts handled_content
  end

end
