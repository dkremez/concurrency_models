channel = Channel(Int32).new
total_lines = 0
files = Dir.glob("**/*.rb")

files.each do |f|
  spawn do
    lines = File.read(f).lines.size
    channel.send lines
  end
end

files.size.times { total_lines += channel.receive }

puts total_lines
