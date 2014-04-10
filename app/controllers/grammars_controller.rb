class GrammarsController < ApplicationController
  def index
    @grammars = Grammar.search(params[:search])
  end
end
