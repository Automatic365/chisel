require 'minitest/autorun'
require 'minitest/pride'
require './lib/paragraph_converter'

class ParagraphConverterTest < Minitest::Test

  def test_adds_p_tags_to_string
    text = "Villanova"
    paragraph = ParagraphConverter.new
    assert_equal "<p>Villanova</p>", paragraph.format(text)
  end

end
