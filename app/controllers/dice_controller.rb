class DiceController < ApplicationController
  def home
    render({:template => "dice_templates/home"})
  end
  def twodsix
    @rolls = []

    2.times do
    die = rand(1..6)

    @rolls.push(die)
    end
    render ({:template => "dice_templates/2d6"})
  end
  def two_ten
    @rolls = []

    2.times do
    die = rand(1..10)

    @rolls.push(die)
    end
    render ({:template => "dice_templates/two_ten"})
  end
  def one_twenty
    @rolls = []

    1.times do
      die = rand(1..20)

      @rolls.push(die)
    end
    render ({:template => "dice_templates/one_twenty"})
  end
  def five_four
    @rolls = []

    5.times do
      die = rand(1..4)

      @rolls.push(die)
    end
    render ({:template => "dice_templates/five_four"})
  end
  def dynamic
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("how_many_sides").to_i

    @rolls = []

    @num_dice.times do
      die = rand(1..@sides)

      @rolls.push(die)
    end
    render ({:template => "dice_templates/flexible"})
  end

end
