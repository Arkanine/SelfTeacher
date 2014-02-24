class TopicsController < ApplicationController
  def show
    @topic = Topic.find(params[:id])
    @comment = Comment.new
  end
end
