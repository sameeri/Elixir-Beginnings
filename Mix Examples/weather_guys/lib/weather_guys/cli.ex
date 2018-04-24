defmodule WeatherGuys.CLI do

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
    {_, [city], _}               -> {city}
      _                                   -> :help
    end

  end

  def process(:help) do
    IO.puts """
            The Weather Guys CLI
            usage: 
            weather_guys <city>
            weather_guys --help 
            """
    System.halt 0

  end

  def process({city}) do
    result = WeatherGuys.City.get city
    IO.inspect result
    System.halt 0
  end

end