class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
    @comment = Comment.new
  end

  def new
    rubric = Rubric.find(params[:rubric_id])
    @topic = rubric.topics.build
  end

  def create
    rubric = Rubric.find(params[:rubric_id])
    @topic = rubric.topics.create(topic_params)
    if @topic.save
      redirect_to rubrics_path, notice: 'Тема обновлена.'
    else
      render new_path
    end
  end

  private
  def topic_params
    params.require(:topic).permit(:name, :content, :rubric_id)
  end
end