require 'rubylog'
include Rubylog::DSL::Constants

# Helpers
def pred x
  Symbol.rubylog_functor x
end
def demo name, statement
  puts "* #{name}\n"
  puts "#{statement} \n=> #{eval(statement)}\n\n"
end

# Predicates
pred :interesting
pred :synonym
pred :see_also
pred :tmmto
pred :chapter

# Synonyms
X.synonym(Y) if Y.synonym(X)
X.synonym(Z) if X.synonym(Y).and Y.synonym(Z)

:math.synonym! :mathematics
:mathematics.synonym! :maths
:'big numbers'.synonym! :'large numbers'
:'bignumbers'.synonym! :'big numbers'

# References and Interestingness
:'big numbers'.see_also! :numbers
:internet.see_also! :networks
:fractions.see_also! :ratios
:ratios.see_also! :numbers
:money.tmmto! :integrals
:tyranny.interesting!
:math.interesting!

# discontinuous
# :authoritarian.see_also! :tyranny       
# :punk.synonym! :'punk rock'
# :punk.synonym! :'punk as fuck'

# Chapters
:bigpicture.chapter! :'1'
:math.chapter! :'1'
:punk.chapter! :'1'
:'algebraic whatever'.chapter! :appendix

demo "Interesting words", "X.interesting.to_a"
demo "Synonyms for math", ":math.synonym(X).to_a"
demo "Chapter 1", "X.chapter(:'1').to_a"
