class Chunk
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def chunk
    text.split("\n\n")
  end
end
