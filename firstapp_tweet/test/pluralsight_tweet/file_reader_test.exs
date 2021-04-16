defmodule FileReaderTest do
    use ExUnit.Case

    test "Passing a file should return a string" do
        str = PluralsightTweet.FileReader.get_strings_to_tweet(Path.join("#{:code.priv_dir(:firstapp_tweet)}", "sample.txt"))

        assert str != nil  
        
    end
end