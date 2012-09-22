# synonyms.rb
require_relative 'rubylog_helpers.rb'

# Predicates and Rules
pred :synonym
pred :synonym_of
X.synonym(Y).if X.synonym_of(Y)
X.synonym(Y).if Y.synonym_of(X)
X.synonym(Z).if X.synonym_of(Y).and Y.synonym_of(Z)   ###########


# Data
:punk.synonym! :'punk rock'
:punk.synonym! :'punk as fuck'
:'big numbers'.synonym_of! :'large numbers'
:'bignumbers'.synonym_of! :'big numbers'
:math.synonym_of! :mathematics
:mathematics.synonym_of! :maths


# Demo
puts "Synonyms for math: #{:math.synonym(X).to_a}"
puts "Synonyms for maths: #{:maths.synonym(X).to_a}"
puts "Synonyms for mathematics: #{:mathematics.synonym(X).to_a}"
