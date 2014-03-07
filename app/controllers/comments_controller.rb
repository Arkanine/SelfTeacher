class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

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
      redirect_to :back, alert: 'Проверьте сообщение'
    end
  end

  def edit
    @topic = @comment.topic
    @button = 'Исправить компанию'
  end

  def update
    if @comment.update(comment_params)
      redirect_to @comment.topic, notice: 'Тег обновлен'
    else
      redirect_to :back, alert: 'Ошибка'
    end
  end

  def destroy
    @comment.destroy
    redirect_to @comment.topic, notice: 'Компания удалена'
  end

  private

  def comment_params
    params.require(:comment).permit(:name, :content, :rubric_id, :parent_id)
  end

  def set_company
    @comment = Comment.find(params[:id])
  end
end
