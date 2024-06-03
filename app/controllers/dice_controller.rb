class DiceController < ApplicationController
  def home
    render({:template => "roll_templates/home"})
  end

  def roller
    @num_dice = params.fetch("num_dice").to_i

    @sides = params.fetch("dice_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)
      @rolls.push(die)
    end

    render({:template => "roll_templates/flex"})
  end

end
