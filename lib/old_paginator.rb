=begin Files and directories in ../create
drones/
free.txt
lists/
outlines/
pages.txt
pattern.txt
plagiarism/
unstructured_text/
=end

class Archive < Array

  def initialize( *sources ) 
    sources.each do |source|
      open(source) do |f|               
        f.each(/^---$/) do |doc|       
          self << Page.new(doc)       
        end
      end
    end
  end
end

archive = Archive.new("
