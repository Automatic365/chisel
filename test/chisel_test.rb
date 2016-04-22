require 'minitest/autorun'
require 'minitest/pride'
require './lib/chisel'

class ChiselTest < Minitest::Test

  def test_chisel_converts_markdown_to_html
    markdown = "#New York Knicks\n\nvillanova wildcats"
    html = "<h1>New York Knicks</h1>\n\n<p>villanova wildcats</p>"
    assert_equal html, Chisel.new(markdown).to_html
  end

end
