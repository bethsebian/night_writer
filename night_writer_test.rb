gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'night_writer.rb'

class NightWriterTest < Minitest::Test
  def test_night_writer_file_exists
    skip
    assert File.exists?('night_writer.rb')
  end

  def test_hash_values_for_lowercase_letters_are_accurate
    hash_test = NightWriter.new
    assert_equal ["o",".",".",".",".","."], hash_test.machine("a")
    assert_equal ["o",".","o",".",".","."], hash_test.machine("b")
    assert_equal ["o","o",".",".",".","."], hash_test.machine("c")
    assert_equal ["o","o",".","o",".","."], hash_test.machine("d")
    assert_equal ["o",".",".","o",".","."], hash_test.machine("e")
    assert_equal ["o","o","o",".",".","."], hash_test.machine("f")
    assert_equal ["o","o","o","o",".","."], hash_test.machine("g")
    assert_equal ["o",".","o","o",".","."], hash_test.machine("h")
    assert_equal [".","o","o",".",".","."], hash_test.machine("i")
    assert_equal [".","o","o","o",".","."], hash_test.machine("j")
    assert_equal ["o",".",".",".","o","."], hash_test.machine("k")
    assert_equal ["o",".","o",".","o","."], hash_test.machine("l")
    assert_equal ["o","o",".",".","o","."], hash_test.machine("m")
    assert_equal ["o","o",".","o","o","."], hash_test.machine("n")
    assert_equal ["o",".",".","o","o","."], hash_test.machine("o")
    assert_equal ["o","o","o",".","o","."], hash_test.machine("p")
    assert_equal ["o","o","o","o","o","."], hash_test.machine("q")
    assert_equal ["o",".","o","o","o","."], hash_test.machine("r")
    assert_equal [".","o","o",".","o","."], hash_test.machine("s")
    assert_equal [".","o","o","o","o","."], hash_test.machine("t")
    assert_equal ["o",".",".",".","o","o"], hash_test.machine("u")
    assert_equal ["o",".","o",".","o","o"], hash_test.machine("v")
    assert_equal [".","o","o","o",".","o"], hash_test.machine("w")
    assert_equal ["o","o",".",".","o","o"], hash_test.machine("x")
    assert_equal ["o","o",".","o","o","o"], hash_test.machine("y")
    assert_equal ["o",".",".","o","o","o"], hash_test.machine("z")
  end

  def test_hash_values_for_basic_symbols_letters_are_accurate
    hash_test = NightWriter.new
    assert_equal [".",".","o","o","o","."], hash_test.machine("!")
    assert_equal [".",".",".",".","o","."], hash_test.machine("'")
    assert_equal [".","o",".",".",".","."], hash_test.machine(",")
    assert_equal [".",".",".",".","o","o"], hash_test.machine("-")
    assert_equal [".",".","o","o",".","o"], hash_test.machine(".")
    assert_equal [".",".","o",".","o","o"], hash_test.machine("?")
  end

  def test_hash_machine_translates_capital_letters_to_braille
    hash_test = NightWriter.new
      assert_equal [".",".",".",".",".","o","o",".",".",".",".","."], hash_test.machine('A')
      assert_equal [".",".",".",".",".","o","o",".","o",".",".","."], hash_test.machine('B')
      assert_equal [".",".",".",".",".","o","o","o",".",".",".","."], hash_test.machine('C')
      assert_equal [".",".",".",".",".","o","o","o",".","o",".","."], hash_test.machine('D')
      assert_equal [".",".",".",".",".","o","o",".",".","o",".","."], hash_test.machine('E')
      assert_equal [".",".",".",".",".","o","o","o","o",".",".","."], hash_test.machine('F')
      assert_equal [".",".",".",".",".","o","o","o","o","o",".","."], hash_test.machine('G')
      assert_equal [".",".",".",".",".","o","o",".","o","o",".","."], hash_test.machine('H')
      assert_equal [".",".",".",".",".","o",".","o","o",".",".","."], hash_test.machine('I')
      assert_equal [".",".",".",".",".","o",".","o","o","o",".","."], hash_test.machine('J')
      assert_equal [".",".",".",".",".","o","o",".",".",".","o","."], hash_test.machine('K')
      assert_equal [".",".",".",".",".","o","o",".","o",".","o","."], hash_test.machine('L')
      assert_equal [".",".",".",".",".","o","o","o",".",".","o","."], hash_test.machine('M')
      assert_equal [".",".",".",".",".","o","o","o",".","o","o","."], hash_test.machine('N')
      assert_equal [".",".",".",".",".","o","o",".",".","o","o","."], hash_test.machine('O')
      assert_equal [".",".",".",".",".","o","o","o","o",".","o","."], hash_test.machine('P')
      assert_equal [".",".",".",".",".","o","o","o","o","o","o","."], hash_test.machine('Q')
      assert_equal [".",".",".",".",".","o","o",".","o","o","o","."], hash_test.machine('R')
      assert_equal [".",".",".",".",".","o",".","o","o",".","o","."], hash_test.machine('S')
      assert_equal [".",".",".",".",".","o",".","o","o","o","o","."], hash_test.machine('T')
      assert_equal [".",".",".",".",".","o","o",".",".",".","o","o"], hash_test.machine('U')
      assert_equal [".",".",".",".",".","o","o",".","o",".","o","o"], hash_test.machine('V')
      assert_equal [".",".",".",".",".","o",".","o","o","o",".","o"], hash_test.machine('W')
      assert_equal [".",".",".",".",".","o","o","o",".",".","o","o"], hash_test.machine('X')
      assert_equal [".",".",".",".",".","o","o","o",".","o","o","o"], hash_test.machine('Y')
      assert_equal [".",".",".",".",".","o","o",".",".","o","o","o"], hash_test.machine('Z')
  end

  def test_hash_machine_translates_single_char_numbers_to_braille
    skip
    # NOTES: functionality not built yet. This will test numbers in isolation
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

  def test_hash_machine_translates_double_char_numbers_to_braille
    skip
    # NOTES: functionality not built yet. This will test 2 consecutive numbers
    hash_test = NightWriter.new
    # assert_equal expected_value, actual_value ("7","1")
  end

  def test_hash_machine_translates_single_char_numbers_immed_after_text_char_to_braille
    skip
    # NOTES: functionality not built yet. This will test single numbers after alphabet characters, ex: u7
    hash_test = NightWriter.new
  end

  def test_hash_machine_translates_single_char_numbers_immed_before_text_char_to_braille
    skip
    # NOTES: functionality not built yet. This will test single numbers before alphabet characters, ex: 7u
    hash_test = NightWriter.new
  end

  def test_hash_machine_translates_single_char_numbers_immed_before_space_to_braille
    # NOTES: functionality not built yet.
    skip
    hash_test = NightWriter.new
  end

  def test_hash_machine_translates_single_char_numbers_immed_after_space_to_braille
    # NOTES: functionality not built yet.
    skip
    hash_test = NightWriter.new
  end

  def test_hash_machine_translates_spaces_to_braille
    hash_test = NightWriter.new
    assert_equal [".",".",".",".",".","."], hash_test.machine(" ")
  end

  def test_hash_machine_translates_quotation_marks_to_braille
    hash_test = NightWriter.new
    assert_equal [".",".",".",".","o","."], hash_test.machine("'")
  end

  def test_hash_machine_returns_under_10_char_strings
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine("t","h","i","s"," ","i","s"," ","a")
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_hash_machine_returns_10_to_20_char_strings
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_hash_machine_returns_20_to_40_lowercase_char_strings
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_hash_machine_returns_40_plus_lowercase_char_strings
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_translate_method_returns_under_10_char_strings
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine("t","h","i","s"," ","i","s"," ","a")
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_translate_method_returns_10_to_20_char_strings
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_translate_method_returns_20_to_40_lowercase_char_strings
    skip
    hash_test = NightWriter.new
    # NOTES: this is built, test needs to be fleshed out.
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_translate_method_returns_40_plus_lowercase_char_strings
    skip
    hash_test = NightWriter.new
    # NOTES: this is built, test needs to be fleshed out.
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_formatted_output_returns_under_10_char_strings
    skip
    hash_test = NightWriter.new
    # NOTES: this is built, test needs to be fleshed out.
    assert_equal expected_value, hash_test.machine("t","h","i","s"," ","i","s"," ","a")
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_formatted_output_returns_10_to_20_char_strings
    skip
    hash_test = NightWriter.new
    # NOTES: this is built, test needs to be fleshed out.
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_formatted_output_returns_20_to_40_lowercase_char_strings
    skip
    hash_test = NightWriter.new
    # NOTES: this is built, test needs to be fleshed out.
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_formatted_output_method_returns_40_plus_lowercase_char_strings
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

  def test_formatted_output_method_returns_under_40_char_strings_with_uppercase_qty_that_causes_translation_to_exceed_80_chars
    skip
    # NOTES: this is built, test needs to be fleshed out.
    hash_test = NightWriter.new
    assert_equal expected_value, hash_test.machine(variation1)
    assert_equal expected_value, hash_test.machine(variation2)
    assert_equal expected_value, hash_test.machine(variation3)
  end

end
