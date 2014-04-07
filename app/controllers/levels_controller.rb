class LevelsController < ApplicationController
  def show
    @level = Level.find(params[:id])
    @lessons = Lesson.all
  end
end
