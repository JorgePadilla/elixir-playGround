defmodule FirstappTweetTest do
  use ExUnit.Case
  doctest FirstappTweet

  test "greets the world" do
    assert FirstappTweet.hello() == :world
  end
end
