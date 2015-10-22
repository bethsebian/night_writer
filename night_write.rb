require_relative 'night_writer'

write_braille = NightWriter.new
write_braille.runner

puts "Created '#{ARGV[1]}' containing #{File.read(ARGV[0]).length} characters.\n\nEXISTING FUNCTIONALITY:\n1) Captures input text from designated file.\n2) Translates strings of uppercase letters, lowercase letters, and symbols to braille. \n3) Outputs translation to designated file.\n\nMISSING FUNCTIONALITY includes:\n1) Move to new line after 80 characters.\n2) Translate numbers (tests written, draft code in place but does not work yet).\n3) Add contractions (no progress).\n4) Translate from braille back to English (no progress).\n"
