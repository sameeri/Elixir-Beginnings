## Hello World
# Module
# Functions
# defmodule, def
# Naming conventions
# one line functions
# arguments
# parantheses/or not
# String interpolation
# Public, Private functions
# Heredocs

defmodule Greet do

  def world do 
    IO.puts "Hello World"
  end

  def universe do
    IO.puts "Hola " <> "Universe"
  end

  def casual(name) do
    IO.puts " Hey, #{name}"
  end

  def enthusiastic name do
    IO.puts "Yo #{name}, my man."
  end

  def beam do
    IO.puts """

            https://www.youtube.com/watch?v=cLno3Wf720c

            I have the BEAM
            And OTP
            To help me code
            Reliably

            If you use Elixir
            You can make it scale
            Services keep running
            Even if they fail

            I believe in Erlang
            Where I get to use concurrency
            I believe in Erlang
            Built by Mike and Joe and Robert V
            I live the dream
            I have the BEAM

            I have the BEAM
            And LFE
            So I can use
            Parenthesis

            All the computations
            Are in soft real-time
            In this ecosystem
            Spikes are handled fine

            I believe in Erlang
            Where I get to use concurrency
            I believe in Erlang
            Built by Mike and Joe and Robert V
            I live the dream
            I have the BEAM

            I'll reign supreme
            I have the BEAM

            """
  end

  defp sameeri do
    IO.puts "(wahwah)"
  end

end

Greet.world

Greet.universe

Greet.casual "Joel"

Greet.enthusiastic "Zach"

Greet.beam

#Greet.sameeri # Error