class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit, :update, :destroy]

  def index
    @comments = Comment.search(params[:search])
    if @comments.class == Array
      @comments = Kaminari.paginate_array(@comments).page(params[:page]).per(5)
    else
      @comments = @comments.page(params[:page]).per(5)
    end
  end

  def new
    @topic = Topic.find(params[:topic_id])
    @comment = Comment.new(parent_id: params[:parent_id], user_id: current_user.id)
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.topic = Topic.find(params[:topic_id])
    @comment.user = current_user
    if @comment.save
      redirect_to topic_path(@comment.topic)
    else
      redirect_to :back, alert: 'Перевірте повідомлення'
    end
  end

  def edit
    @topic = @comment.topic
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment.topic
    else
      redirect_to :back, alert: 'Помилка'
    end
  end

  def destroy
    @comment.destroy
    redirect_to @comment.topic
  end

private

  def comment_params
    params.require(:comment).permit(:name, :content, :rubric_id, :parent_id)
  end

  def set_company
    @comment = Comment.find(params[:id])
  end
end
