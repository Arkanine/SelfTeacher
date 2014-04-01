class TopicsController < ApplicationController
  before_action :set_topic, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:new, :create, :edit, :update, :destroy]
  before_action :check_user, only: [:edit, :update, :destroy]

  def show
    @topic = Topic.find(params[:id])
    @comment = Comment.new
    @comments = Comment.where(topic_id: params[:id]).page(params[:page]).per(9)
  end

  def new
    rubric = Rubric.find(params[:rubric_id])
    @topic = rubric.topics.build
  end

  def create
    rubric = Rubric.find(params[:rubric_id])
    @topic = rubric.topics.new(topic_params)
    @topic.user = current_user
    if @topic.save
      redirect_to @topic, notice: 'Тема обновлена.'
    else
      render new_path
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update(topic_params)
      redirect_to @topic, notice: 'Topic updated'
    else
      render edit_path
    end
  end

  def destroy
    @topic.destroy
    redirect_to @topic.rubric
  end

  private
  def topic_params
    params.require(:topic).permit(:name, :content, :rubric_id)
  end

  def set_topic
    @topic = Topic.find(params[:id])
  end

  def check_user
    redirect_to rubrics_url, notice: 'Нельзя :)' if @topic.user != current_user
  end
end