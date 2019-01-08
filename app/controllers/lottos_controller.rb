class LottosController < ApplicationController
 def index
 end
 
 def new
    numbers = (1..45).to_a
    random_numbers = numbers.sample 6
    @lottos = random_numbers.sort
 end
 
 def recent
 end
 
end
