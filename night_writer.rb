require 'pry'

class FileReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end

class NightWriter
  attr_reader :file_reader

  def initialize
    @reader = FileReader.new
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)
  end

  def machine(key)
    master_hash = Hash["d",["o","o",".","o",".","."],"r",["o",".","o","o","o","."],"k",["o",".",".",".","o","."],"v",["o",".","o",".","o","o"],"a",["o",".",".",".",".","."]]
    master_hash[key]
  end

  def translate
    @reader.read.chars.map { |i| machine(i) }
  end

  # def echo
  #   "#{machine(@input)}\n#{machine(@input)}\n#{machine(@input)}"
  # end

  def runner
    testw = File.new(ARGV[1],"w+")
    testw.write(translate)
    testw.close
  end
end

testa= NightWriter.new
testa.runner


puts "Created '#{ARGV[1]}' containing #{File.read(ARGV[0]).length} characters."


#puts ARGV[1].inspect


# class NightWriter
#   attr_reader :file_reader, :input_file, :output_file
#
#   def initialize
#     @input_file = message.txt
#     @output_file = ARGV[1]
#   end
#
#   def read(file='input_file')
#     File.read(file)
#     File.close(file)
#   end
#
#   def encode_file_to_braille
#     # I wouldn't worry about testing this method
#     # unless you get everything else done
#     plain = reader.read
#     braille = encode_to_braille(plain)
#   end
#
#   def encode_to_braille(input)
#     # you've taken in an INPUT string
#     # do the magic
#     # send out an OUTPUT string
#   end
#
# end
#
# nm = '~/turing/1module/projects/night_writer/message.txt'
# p read(nm)
#
# puts ARGV.inspect


#!/usr/bin/env ruby




# $ ruby ./lib/night_write.rb message.txt braille.txt
# Created 'braille.txt' containing 256 characters

# braille_result = File.new("message.txt","w+") # creates file with read/write privileges
# braille_result.write("this is a test3")
# braille_result.close  # closes and forces batch to write
