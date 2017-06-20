class QuestionsController < ApplicationController
  def index
    @questions = Question.all
    # render :index
  end

  def show
    @question = Question.find(params[:id])
    # @comments = @question.comments
    @answers = @question.answers
  end

end
