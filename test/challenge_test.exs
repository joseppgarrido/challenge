defmodule Test.ChallengeTest do
  use ExUnit.Case
  doctest RepeatedWords

  describe "word_count/1" do

    test "test con archivo pequeño" do
      file = "C:/Elixir/file.txt"
      assert RepeatedWords.word_count(file) == [
        {"eran", 2},
        {"los", 2},
        {"mejores", 2},
        {"días", 1},
        {"pero", 1},
        {"próximos", 1},
        {"que", 1}
      ]

    end

    test "test con archivo mediano" do
      file = "C:/Elixir/file1.txt"
      assert RepeatedWords.word_count(file)
    end

    test "test con archivo grande" do
      file = "C:/Elixir/file2.txt"
      assert RepeatedWords.word_count(file)
    end

  end

end
