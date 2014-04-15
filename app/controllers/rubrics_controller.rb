class RubricsController < ApplicationController
  def index
    @rubrics = Rubric.all
    @topics = Topic.all
    @comments = Comment.all
  end

  def show
    @rubric = Rubric.find(params[:id])
    @topics = @rubric.topics.page(params[:page]).per(3)
    @comments = Comment.all
  end
end



