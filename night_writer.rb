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
    master_hash = Hash["a", ["o",".",".",".",".","."],"b",["o",".","o",".",".","."],"c",["o","o",".",".",".","."],"d", ["o","o",".","o",".","."],"e", ["o",".",".","o",".","."],"f", ["o","o","o",".",".","."],"g",["o","o","o","o",".","."],"h",["o",".","o","o",".","."],"i",[".","o","o",".",".","."],"j",[".","o","o","o",".","."],"k",["o",".",".",".","o","."],"l",["o",".","o",".","o","."],"m",["o","o",".",".","o","."],"n",["o","o",".","o","o","."],"o",["o",".",".","o","o","."],"p",["o","o","o",".","o","."],"q",["o","o","o","o","o","."],"r",["o",".","o","o","o","."],"s",[".","o","o",".","o","."],"t",[".","o","o","o","o","."],"u",["o",".",".",".","o","o"],"v",["o",".","o",".","o","o"],"w",[".","o","o","o",".","o"],"x",["o","o",".",".","o","o"],"y",["o","o",".","o","o","o"],"z",["o",".",".","o","o","o"],"!",[".",".",".",".","o","."],",",[".","o",".",".",".","."],"-",[".",".",".",".","o","o"],".",[".",".","o","o",".","o"],"?",[".",".","o",".","o","o"],"#",[".","o",".","o","o","o"],"0",[".","o","o","o",".","."],"1",["o",".",".",".",".","."],"2",["o",".","o",".",".","."],"3",["o","o",".",".",".","."],"4",["o","o",".","o",".","."],"5",["o",".",".","o",".","."],"6",["o","o","o",".",".","."],"7",["o","o","o","o",".","."],"8",["o",".","o","o",".","."],"9",[".","o","o",".",".","."],"\s",[".",".",".",".",".","."],"A",[".",".",".",".",".","o","o",".",".",".",".","."],"B",[".",".",".",".",".","o","o",".","o",".",".","."],"C",[".",".",".",".",".","o","o","o",".",".",".","."],"D",[".",".",".",".",".","o","o","o",".","o",".","."],"E",[".",".",".",".",".","o","o",".",".","o",".","."],"F",[".",".",".",".",".","o","o","o","o",".",".","."],"G",[".",".",".",".",".","o","o","o","o","o",".","."],"H",[".",".",".",".",".","o","o",".","o","o",".","."],"I",[".",".",".",".",".","o",".","o","o",".",".","."],"J",[".",".",".",".",".","o",".","o","o","o",".","."],"K",[".",".",".",".",".","o","o",".",".",".","o","."],"L",[".",".",".",".",".","o","o",".","o",".","o","."],"M",[".",".",".",".",".","o","o","o",".",".","o","."],"N",[".",".",".",".",".","o","o","o",".","o","o","."],"O",[".",".",".",".",".","o","o",".",".","o","o","."],"P",[".",".",".",".",".","o","o","o","o",".","o","."],"Q",[".",".",".",".",".","o","o","o","o","o","o","."],"R",[".",".",".",".",".","o","o",".","o","o","o","."],"S",[".",".",".",".",".","o",".","o","o",".","o","."],"T",[".",".",".",".",".","o",".","o","o","o","o","."],"U",[".",".",".",".",".","o","o",".",".",".","o","o"],"V",[".",".",".",".",".","o","o",".","o",".","o","o"],"W",[".",".",".",".",".","o",".","o","o","o",".","o"],"X",[".",".",".",".",".","o","o","o",".",".","o","o"],"Y",[".",".",".",".",".","o","o","o",".","o","o","o"],"Z",[".",".",".",".",".","o","o",".",".","o","o","o"],]
    master_hash[key]
  end

  def translate
    @reader.read.chars.map { |i| machine(i) }
  end

  def translation_output
    line1 = Array.new
    line2 = Array.new
    line3 = Array.new

    translate.map do |i|
      line1.push(i[0])
      line1.push(i[1])
      line2.push(i[2])
      line2.push(i[3])
      line3.push(i[4])
      line3.push(i[5])
    end

    line1 = line1.join
    line2 = line2.join
    line3 = line3.join

    "#{line1}\n#{line2}\n#{line3}"

    end

  # def echo
  #   "#{machine(@input)}\n#{machine(@input)}\n#{machine(@input)}"
  # end

  def runner
    testw = File.new(ARGV[1],"w+")
    testw.write(translation_output)
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
