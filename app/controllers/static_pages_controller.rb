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

  def grammar
    @grammar_nouns = Grammar.where(basis: 'Іменник (The Noun)')
    @grammar_adjectives = Grammar.where(basis: 'Прикметник (The Adjective)')
    @grammar_numerals = Grammar.where(basis: 'Числівник (The Numeral)')
  end
end
