class ExercisesController < ApplicationController
  def index
    @delt = Exercise.where(menu_id: 1)
  end
end
