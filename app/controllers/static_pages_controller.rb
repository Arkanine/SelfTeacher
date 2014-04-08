class StaticPagesController < ApplicationController
  def home
    @response = Topic.find_by_name('Відгуки')
    @test = Test.find_by_name('Тест на знання ангійської  мови')
  end

  def help
  end

  def about
  end

  def individual_learn_page
  end

  def skype_learn_page
  end

  def payment
  end

  def techniue
  end

  def training_program
  end
end
