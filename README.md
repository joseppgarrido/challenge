## WordCount
* [Description](#description)
* [Dependencies](#dependencies)
* [Run](#run)

# Description
The WordCount aplication reads from a file and prints each word with the number of repetitions.
It shows ordered by most repeated. In case of tie it orders alphabetical.

# Dependencies
It runs on Elixir v1.13
You can see the whole installation guide in [Elixir installation guide](https://elixir-lang.org/install.html)
There are some sample files but you can use your owns.

# Run
Running the aplication requires to compile the lib/challenge.ex file in Elixir iex.
iex > c("Path_to/lib/challenge.ex")
Then you can access the module RepeatedWords wich have the function word_count. It needs the Path to the file you want to process.
ex: RepeatedWords.word_count("Path_to_file/file.txt")
