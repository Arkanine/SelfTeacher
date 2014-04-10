class GrammarsController < ApplicationController
  def index
    @grammars = Grammar.search(params[:search])
  end

  def show
    @grammar = Grammar.find(params[:id])
  end
end
