defmodule Swapi.Resource do
  def get(resource) do 
    resource 
    |> build_resource_url()
    |> HTTPoison.get(["Authority": "swapi.co"]) 
    |> handle_response
  end

  def build_resource_url(resource) do
    "https://swapi.co/api/#{resource}"
  end

  def handle_response({ :ok, %{status_code: 200, body: body}}) do
    IO.puts "valid"
    body
  end

  def handle_response({ _, %{status_code: status_code, body: error}}) do
    IO.puts status_code
    IO.puts error
  end

end
