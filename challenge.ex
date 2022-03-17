defmodule RepeatedWords do

  def word_count(readFile) do
     readFile
     |> words
     |> count
     |> order
  end

  defp words(file) do
    file
    |> File.stream!
    |> Stream.map(&String.split(&1, ~r/(*UTF)\W/, trim: true))
    |> Enum.to_list
    |> List.flatten
    |> Enum.map(&String.downcase(&1))
  end

  defp count(words) when is_list(words) do
    Enum.reduce(words, %{}, &count_acc/2)
  end

  defp count_acc(word, acc) do
    Map.update(acc, String.to_atom(word), 1, &(&1 + 1))

  end

  defp order(words_count) do
    words_count
    |> Map.to_list()
    |> Enum.sort_by(&(elem(&1, 1)))
    |> Enum.reverse()
    # |> Enum.sort()
  end

end
