require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/:number_of_dice/:number_of_sides") do
  @rolls = []
  @num_dice = params.fetch("number_of_dice").to_i
  @sides = params.fetch("number_of_sides").to_i

  @num_dice.times do
    die = rand(1..@sides)
    @rolls.append(die)
  end

  erb(:flexible)
end
