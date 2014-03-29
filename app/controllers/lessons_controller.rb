class LessonsController < ApplicationController
  def index
  end

  def show
    @lesson = Lesson.find(params[:id])
    @exercises = Exercise.all
    @tracks = Track.all
  end
end
