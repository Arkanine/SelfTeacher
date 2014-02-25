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

  def new
    @rubric = Rubric.new
  end

  def create
    @rubric = Rubric.new(rubric_params)
    if @rubric.save
      redirect_to @rubric, notice: 'Тема обновлена.'
    else
      render action: 'edit'
    end
  end


  def edit
    @rubric = Rubric.find(params[:id])
  end

  def update
    @rubric = Rubric.find(params[:id])
    if @rubric.update(rubric_params)
      redirect_to @rubric, notice: 'Тема обновлена.'
    else
      render action: 'edit'
    end
  end

  private
  def rubric_params
    params.require(:rubric).permit(:name, :body, topics_attributes: [:id, :name, :content])
  end
end



