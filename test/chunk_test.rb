
require 'minitest/autorun'
require 'minitest/pride'
require './lib/chunk'

class ChunkTest < Minitest::Test

  def test_text_split_into_chunks
    text = "villa\n\nnova"
    chunk = Chunk.new(text)
    assert_equal ["villa", "nova"], chunk.chunk
  end

  def test_one_line_break_is_one_chunk
    text = "new\nyork"
    chunk = Chunk.new(text)
    assert_equal ["new\nyork"], chunk.chunk
  end

  def test_longer_string
    text = "knicks\n\nare\n\ncool"
    chunk = Chunk.new(text)
    assert_equal ["knicks", "are", "cool"], chunk.chunk
  end

end
