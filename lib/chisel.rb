require './lib/chunk'

class Chisel

  def initialize(markdown)
    @markdown = markdown
  end

  def to_html
    chunks = Chunk.new(@markdown).chunk
    html_chunks = chunks.map do |chunk|
    end
    html_chunks.join("\n\n")
  end

end

if __FILE__   == $PROGRAM_NAME
  input_file  = ARGV[0]
  output_file = ARGV[1]

  markdown = File.read(input_file)
  html = Chisel.new(markdown).to_html
  File.write(output_file, html)
end
