class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
    @comment = Comment.new
  end

  def new
    @topic = Topic.new
    @comment = @topic.comments.build
  end
end
