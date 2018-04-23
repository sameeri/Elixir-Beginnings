# MP3
# ID3 v1: http://id3.org/ID3v1
# MP3 file : Silent Night, https://www.mfiles.co.uk/mp3-files.htm
# Binary pattern matching
# Maps
# Heredocs
# Specifying types with ::
# Elixir/OTP in Action 

defmodule MP3Parser do

  def get_info file_name do
    case File.read(file_name) do
      {:ok, contents} -> contents |> id3_parser
      {:error, :enoent} -> IO.puts "Oh no! File does not exist"
    end
  end

  def id3_parser(mp3) do

    file_size = byte_size(mp3)
    id3_tag_size = 128
    audio_size = file_size - id3_tag_size
        
    << _ :: binary-size(audio_size), id3_tag:: binary>> = mp3

    <<"TAG", 
      title :: binary-size(30), 
      artist :: binary-size(30), 
      album :: binary-size(30), 
      year :: binary-size(4), 
      _ :: binary>> = id3_tag

      %{:title => title, 
        :artist => artist, 
        :album => album,
        :year => year}
    
  end

end

#MP3Parser.parse_id3_v3("non_existant.mp3")

mp3_info = MP3Parser.get_info("silent-night.mp3")
IO.puts """
title: #{mp3_info.title}, 
artist: #{mp3_info.artist}, 
album: #{mp3_info.album}, 
year: #{mp3_info.year}
"""

