class TestsController < ApplicationController
  before_action :set_test, only: [:show, :edit, :update, :destroy]

  # GET /tests
  # GET /tests.json
  def index
    @tests = Test.all
    @question_count = Question.all.count
    @result_count = Result.where(score:1).count

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

  # GET /tests/1
  # GET /tests/1.json
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

  # GET /tests/new
  def new
    @test = Test.new
  end

  # GET /tests/1/edit
  def edit
  end

  # POST /tests
  # POST /tests.json
  def create
    @test = Test.new(test_params)

    respond_to do |format|
      if @test.save
        format.html { redirect_to @test, notice: 'Test was successfully created.' }
        format.json { render action: 'show', status: :created, location: @test }
      else
        format.html { render action: 'new' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tests/1
  # PATCH/PUT /tests/1.json
  def update
    respond_to do |format|
      if @test.update(test_params)
        format.html { redirect_to @test, notice: 'Test was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tests/1
  # DELETE /tests/1.json
  def destroy
    @test.destroy
    respond_to do |format|
      format.html { redirect_to tests_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test
      @test = Test.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_params
      params.require(:test).permit(:name)
    end
end
