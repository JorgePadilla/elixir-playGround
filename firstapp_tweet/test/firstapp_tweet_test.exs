defmodule FirstappTweetTest do
  use ExUnit.Case
  doctest FirstappTweet

  test "greets the world" do
    assert FirstappTweet.hello() == :world
  end

  test "the truth" do
    assert 1 + 1 == 2
  end

  @tag watching: true
  test "another test" do
    assert 2 + 2 == 4
  end
end
