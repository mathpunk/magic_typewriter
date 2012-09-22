# Requirements
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
