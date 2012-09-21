require 'rubylog'
include Rubylog::DSL::Constants
Symbol.rubylog_functor :likes, :drinks, :has

# Clauses: sending the functor to the first argument, passing the other arguments:
:john.likes :beer       # likes(john,beer) in Prolog

# Facts can be asserted with a bang:
:john.likes! :beer      # likes(john, beer). in Prolog
:john.has! :beer
# :john.likes!(:beer).has!(:beer)

# Rules can be asserted with if and unless:
X.drinks(Y).if X.has(Y).and X.likes(Y)         # drinks(X,Y) :- has(X,Y), likes(X,Y). in Prolog

# Queries can be proved with a question mark or with true?:
:john.drinks? :beer         # => true
(:john.drinks :beer).true?  # => true

# Or solutions can be enumerated (clauses include Enumerable)
(:john.drinks X).each {|x| p x}  # outputs :beer
(:john.drinks X).to_a            # => [:beer]

# At most places you can mix native Ruby with Rubylog by using a proc instead
# of a clause. Blocks are automatically converted to proc objects:
X.drinks(Y).if proc{|x,y| y.to_s =~ /^Z/ }
X.drinks(Y).if {|x,y| y.to_s =~ /^Z/ }     # the same
X.drinks(Y).if X.likes(Y).and proc { Time.now.hour == 12 }
X.drinks(Y).if X.likes(Y).and { Time.now.hour == 12 }     # the same

# Variable values are passed to the proc, in the order of appearance.
# Nullary predicates are just symbols:

:john.drinks(:beer).if :true.or :false

# For predicates requiring a simple value as an argument, you can pass a proc that returns that value

X.drinks(Y).if Y.is proc{|x| $favorites[x] }
X.drinks(Y).if Y.is {|x| $favorites[x] }      # the same
