defmodule Swapi.CLI do

  def main(argv) do
    argv
    # |> inspect_args
    |> parse_args
    |> process
  end
  
  def inspect_args(argv) do
    IO.puts "Inspecting passed args"
    parsed_args = OptionParser.parse(argv, switches: [help: :boolean], aliases: [h: :help])

    IO.inspect parsed_args
  end

  def parse_args(argv) do

    parsed_args = OptionParser.parse(argv, switches: [help: :boolean], aliases: [h: :help])

    case (parsed_args) do
    {[help: true], _, _}                  -> :help
    {_, [resource_name, resource_id], _}  -> {resource_name, resource_id}
    {_, [resource_name], _}               -> {resource_name}
      _                                   -> :help
    end

  end

  def process(:help) do
    IO.puts """
            The Star Wars API CLI: https://swapi.co/
            swapi usage: 
            swapi <resource> [resource_id]
            swapi --help 
            swapi --debug [args]
            """
    System.halt 0

  end

  def process({resource_name, id}) do
    IO.inspect {resource_name, id}
    System.halt 0
  end

  def process({resource_name}) do
    IO.puts resource_name
    System.halt 0
  end

end