# MP3
# ID3v1: http://id3.org/ID3v1
# ID3v2: http://id3.org/id3v2.3.0
# h File.read
# tuples
# atoms
# Pattern matching on :error, reason
# Pattern matching on :error, :enoent
# binaries
# ?
# bite_size, binary-size, int-size
# bite_size = Kernel.bite_size
# Kernel.binary-size
# Kernel.int-size

defmodule MP3Parser do

  def parse_id3_v1(file_name) do
    File.read(file_name)
  end

  def parse_id3_v2(file_name) do
    case File.read(file_name) do
      {:ok, _} -> IO.puts "Awesome"
      {:error, reason} -> IO.puts "Oh no! #{reason}"
    end
  end

  def parse_id3_v3(file_name) do
    case File.read(file_name) do
      {:ok, _} -> IO.puts "Awesome"
      {:error, :enoent} -> IO.puts "Oh no! File does not exist"
    end
  end

  def parse_id3_v4(file_name) do
    case File.read(file_name) do
      {:ok, _} -> 
          IO.puts "Awesome"
      {:error, :enoent} -> IO.puts "Oh no! File does not exist"
    end
  end

  def parse_id3_v5(file_name) do
    case File.read(file_name) do
      {:ok, contents} -> 
          contents
      {:error, :enoent} -> IO.puts "Oh no! File does not exist"
    end
  end

  def parse_id3_v5(file_name) do
    case File.read(file_name) do
      {:ok, contents} -> 
        byte_size(contents)
      {:error, :enoent} -> IO.puts "Oh no! File does not exist"
    end
  end

  def parse_id3(file_name) do
    case File.read(file_name) do
      {:ok, contents} -> 
        << "ID3",
        version :: binary-size(2),
        flags :: integer-8,
        size :: binary-size(4),
        _ :: binary >>

        contents
        
    {:error, :enoent} -> IO.puts "Oh no! File does not exist"
    end
  end

end

#MP3Parser.parse_id3_v1("non_existant.mp3")
#MP3Parser.parse_id3_v2("non_existant.mp3")
#MP3Parser.parse_id3_v3("non_existant.mp3")

IO.inspect MP3Parser.parse_id3("its_my_life.mp3")

