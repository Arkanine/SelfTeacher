class LevelsController < ApplicationController
  def index
    @levels = Level.all
  end

  def show
  end
end
