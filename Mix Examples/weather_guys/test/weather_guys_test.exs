defmodule WeatherGuysTest do
  use ExUnit.Case
  doctest WeatherGuys

  test "greets the world" do
    assert WeatherGuys.hello() == :world
  end
end
