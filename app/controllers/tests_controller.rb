class TestsController < ApplicationController
  before_action :set_test, only: [:show, :destroy]

  def index
    @tests = Test.all
    @question_count = Question.all.count
    @result_count = Result.where(score:1).count
    @errors = Result.where(score:nil)

    if @result_count.to_i <= 20
      @knowledge = Level.find_by name:'Початковий рівень: Starter(A1)'
    elsif @result_count.to_i > 20 and @result_count.to_i <= 35
      @knowledge = Level.find_by name:'Елементарний рівень: Elementary (А1-А2)'
    elsif @result_count.to_i > 35 and @result_count.to_i <= 50
      @knowledge = Level.find_by name:'Проміжний рівень: Pre-Intermediate (А2-В1)'
    else @result_count.to_i > 50
      @knowledge = Level.find_by name:'Середній рівень: Intermediate (В1)'
    end
  end

  def show
    Result.destroy_all
    @questions = @test.questions
  end

  def send_results
    params[:result].each do |k, v|
      Result.create(answer_id: v, user_id: current_user.id)
    end
    Result.all.each do |result|
      if result.answer.isright == true
        result.update_attributes(score:1)
      end
    end
    redirect_to tests_path
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    if @test.save
      redirect_to @test
    else
      render action: 'new'
    end
  end


  def destroy
    @test.destroy
    redirect_to tests_url
  end

  private

    def set_test
      @test = Test.find(params[:id])
    end

    def test_params
      params.require(:test).permit(:name)
    end
end
