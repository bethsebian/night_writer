gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'night_writer.rb'

class NightWriterTest < Minitest::Test
  def test_night_writer_file_exists
    skip
    assert File.exists?('night_writer.rb')
  end

  def test_hash_values_are_accurate
    skip
  end

  def test_hash_machine_translates_capital_letters_to_braille
    skip
  end

  def test_hash_machine_translates_numbers_to_braille
    hash_test = NightWriter.new
    # assert_equal [".","o",".","o","o","o",".","o","o","o",".","."], hash_test.machine(0)
    # assert_equal [".","o",".","o","o","o","o",".",".",".",".","."], hash_test.machine(1)
    # assert_equal [".","o",".","o","o","o","o",".","o",".",".","."], hash_test.machine(2)
    # assert_equal [".","o",".","o","o","o","o","o",".",".",".","."], hash_test.machine(3)
    # assert_equal [".","o",".","o","o","o","o","o",".","o",".","."], hash_test.machine(4)
    # assert_equal [".","o",".","o","o","o","o",".",".","o",".","."], hash_test.machine(5)
    # assert_equal [".","o",".","o","o","o","o","o","o",".",".","."], hash_test.machine(6)
    # assert_equal [".","o",".","o","o","o","o","o","o","o",".","."], hash_test.machine(7)
    # assert_equal [".","o",".","o","o","o","o",".","o","o",".","."], hash_test.machine(8)
    # assert_equal [".","o",".","o","o","o",".","o","o",".",".","."], hash_test.machine(9)
  end

  def test_hash_machine_translates_spaces_to_braille
    hash_test = NightWriter.new
    assert_equal [".",".",".",".",".","."], hash_test.machine(" ")
  end

  def test_hash_machine_translates_quotation_marks_to_braille
    hash_test = NightWriter.new
    assert_equal [".",".",".",".","o","."], hash_test.machine("'")
  end

  def test_hash_machine_returns_value
    skip
    #Can add all characters here
  end

  def test_translate_method_applies_machine_to_string
    skip
  end

  def test_translation_output_method_structures_output_line_1
    skip
  end

  def test_translation_output_method_structures_output_line_2
    skip
  end

  def test_translation_output_method_structures_output_line_3
    skip
  end
end
