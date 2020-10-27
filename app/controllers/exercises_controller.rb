class ExercisesController < ApplicationController
  before_action :set_menu, only: :exercise_index

  def exercise_index
    @exercises = Exercise.where(menu_id: @menu.id)
  end

  private
  def set_menu
    @menu = Menu.find(params[:menu_id])
  end
end
