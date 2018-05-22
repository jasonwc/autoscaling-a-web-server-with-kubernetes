# frozen_string_literal: true

require 'sinatra'

set :bind, '0.0.0.0'

def find_match_for_dog
  100.times do |i|
    100000.downto(1) do |j|
      Math.sqrt(j) * i / 0.2
    end
  end
end

get '/' do
  find_match_for_dog
  "Your dog's match was found by #{ENV['POD_NAME']}"
end
