require_relative 'textino'

module Configuration
  CORPUS_DIR = './corpus'
end

class Corpus 
  @@dir = Configuration::CORPUS_DIR

  def first_commit
    self.files do |file|
      t = Textino.new
      t.name = file
      t.save
    end
  end

  def files
    Dir["#{@@dir}/*.wiki"].each do |file|
      puts file
    end
  end

end

corpus = Corpus.new
corpus.first_commit
