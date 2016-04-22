require 'minitest/autorun'
require 'minitest/pride'
require './lib/header_converter'

class HeaderConverterTest < Minitest::Test

  def test_adds_h1_to_string
    string = "#Villanova"
    header = HeaderConverter.new
    assert_equal "<h1>Villanova</h1>", header.format(string)
  end

  def test_adds_h2_to_string
    string = "##Villanova"
    header = HeaderConverter.new
    assert_equal "<h2>Villanova</h2>", header.format(string)
  end

  def test_adds_h3_to_string
    string = "###Villanova"
    header = HeaderConverter.new
    assert_equal "<h3>Villanova</h3>", header.format(string)
  end

  def test_adds_h4_to_string
    string = "####Villanova"
    header = HeaderConverter.new
    assert_equal "<h4>Villanova</h4>", header.format(string)
  end

  def test_adds_h5_to_string
    string = "#####Villanova"
    header = HeaderConverter.new
    assert_equal "<h5>Villanova</h5>", header.format(string)
  end

end
