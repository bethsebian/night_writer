require_relative 'night_writer'

write_braille = NightWriter.new
write_braille.runner

puts "Created '#{ARGV[1]}' containing #{File.read(ARGV[0]).length} characters."
