class DiceController < ApplicationController
  def home
    render({:template => "dice_templates/home"})
  end
  def twodsix
    render ({:template => "dice_templates/2d6"})
  end
end
