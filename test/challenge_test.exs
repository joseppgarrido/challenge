defmodule Test.ChallengeTest do
  use ExUnit.Case
  doctest RepeatedWords

  describe "word_count/1" do

    test "test con archivo pequeño" do

      file = "samples/file.txt"
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
      file = "samples/file1.txt"
      assert RepeatedWords.word_count(file) == [
        {"a", 40},
        {"d", 40},
        {"aa", 20},
        {"aaa", 20},
        {"bbb", 20},
        {"cc", 20},
        {"ccc", 20},
        {"ddd", 20},
        {"eee", 20},
        {"eran", 20},
        {"los", 20},
        {"mejores", 20},
        {"not", 20},
        {"xor", 20},
        {"días", 10},
        {"ee", 10},
        {"fffffffff", 10},
        {"ooooo", 10},
        {"pero", 10},
        {"próximos", 10},
        {"que", 10},
        {"zzzzzzzzz", 10},
        {"end", 1},
        {"file", 1},
        {"medium", 1},
        {"of", 1}
      ]

    end

    test "test con archivo grande" do
      file = "samples/file2.txt"
      assert RepeatedWords.word_count(file)
    end

  end

end
