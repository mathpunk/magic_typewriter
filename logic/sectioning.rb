# sectioning.rb
require_relative 'rubylog_helpers.rb'

pred :chapter

:bigpicture.chapter! :'1'
:math.chapter! :'1'
:punk.chapter! :'1'
:'algebraic whatever'.chapter! :appendix

demo "Chapter 1", "X.chapter(:'1').to_a"
