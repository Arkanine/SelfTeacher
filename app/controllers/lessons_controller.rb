class LessonsController < ApplicationController
  def index
    @lessons = Lesson.search(params[:search])
  end

  def show
    @lesson = Lesson.find(params[:id])
    @exercises = Exercise.all
    @tracks = Track.all
  end
end
