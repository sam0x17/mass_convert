
Dir.open(ARGV[0]).children.each do |f|
  next unless f.ends_with?(".mp3")
  path = Path["#{ARGV[0]}"].join(f)
  puts "processing '#{path}'"
  puts `ffmpeg -i '#{path}' '#{path.to_s.gsub(".mp3", ".mkv")}'`
end
