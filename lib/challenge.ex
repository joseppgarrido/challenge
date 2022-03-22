defmodule RepeatedWords do

  def word_count(readFile) do
     readFile
     |> File.stream!([:compressed])
     |> sanitize
     |> count
     |> order
  end

  defp sanitize(words) do
    words
    |> Stream.flat_map(&String.split(&1, ~r/(*UTF)\W/, trim: true))
    |> Stream.map(&String.downcase(&1))
  end

  defp count(words) do
    Enum.frequencies(words)
  end


  defp order(words_count) do
    words_count
    |> Enum.sort_by(&(elem(&1, 1)), :desc)
  end

end
