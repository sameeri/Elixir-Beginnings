defmodule WeatherGuys.City do
  def get(resource) do 
    resource 
    |> build_resource_url()
    |> HTTPoison.get() 
    |> handle_response
  end

  def build_resource_url(city) do
    "http://api.openweathermap.org/data/2.5/weather?q=#{city}&appid=d1723b0f2b5c362c5b47fbc70341f420"
  end

  def handle_response({ :ok, %{status_code: 200, body: body}}) do
    Poison.Parser.parse body
  end

  def handle_response({ _, %{status_code: status_code, body: error}}) do
    IO.puts status_code
    IO.puts error
  end
end
