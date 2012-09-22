# book_logic.rb
require_relative 'rubylog_helpers.rb'

# Predicates
pred :interesting
pred :see_also
pred :tmmto

# Data
:'big numbers'.see_also! :numbers
:internet.see_also! :networks
:fractions.see_also! :ratios
:ratios.see_also! :numbers

:money.tmmto! :integrals

:tyranny.interesting!
:math.interesting!
# :authoritarian.see_also! :tyranny       

demo "Interesting words", "X.interesting.to_a"
demo "Points to numbers", "X.see_also(:numbers).to_a"
