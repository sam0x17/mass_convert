
Dir.open(ARGV[0]).children.each do |f|
  next unless f.ends_with?(".mp3")
  path = Path["#{ARGV[0]}"].join(f)
  puts "processing '#{path}'"
  #path_tmp = "#{path}_tmp"
  #puts `mv '#{path}' '#{path_tmp}'`
  #puts `ffmpeg -loop 1 -y -i ~/Pictures/Jaboody.jpg -i '#{path_tmp}' -shortest '#{path.to_s.gsub(".mp3", ".mkv")}'`
  puts `ffmpeg -i '#{path}' '#{path.to_s.gsub(".mp3", ".mkv")}'`
end
