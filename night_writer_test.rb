gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'night_writer.rb'


class NightWriterTest < Minitest::Test
  def test_night_writer_file_exists
    assert File.exists?('night_writer.rb')
  end

  
end

# ARGV.each do|a|
#   puts "Argument: #{a}"
# end
# The following is an excerpt of a bash session launching this script (saved as the file test.rb) with a variety of arguments.
#
# $ ./test.rb test1 test2 "three four"
# Argument: test1
# Argument: test2
# Argument: three four
