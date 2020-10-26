class ExercisesController < ApplicationController
  before_action :set_menu, only: :show

  def show
    @exercises = Exercise.where(menu_id: @menu.id)
  end

  private
  def set_menu
    @menu = Menu.find(params[:id])
  end
end
