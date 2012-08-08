# Transform marked-down text to HTML
# It works!

module ToHtml
  require 'rubygems'
  require 'redcarpet'

  # Mixins can either define an attr_reader :text, or they may just pass in text
  # as an argument. At any rate, it's supposed to be in Markdown format. 

  def to_html(text=self.text)
    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true,
                                    :space_after_headers => true, :superscript => true)
    markdown.render(text)
  end

  def ignore_markdown(text=self.text)
    string = text.clone
    text.gsub!(/====+\n/, "")
    text.gsub!(/----+\n/, "")
    text
  end
end

=begin : A fun but dangerous idea?
class String
  include ToHtml
  def text
    self
  end
end
=end
