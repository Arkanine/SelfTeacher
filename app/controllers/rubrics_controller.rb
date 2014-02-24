class RubricsController < ApplicationController
  def index
    @rubrics = Rubric.all
    @topics = Topic.all
    @comments = Comment.all
  end

  def show
    @rubric = Rubric.find(params[:id])
    @topics = Topic.all
  end
end



