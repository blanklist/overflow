class AnswersController < ApplicationController
  # def index
  #   @answers = Answer.all
  #   # render :index
  # end
  #
  def show
    @answer = Answer.find(params[:id])
  end

  def new
  end

  def edit
  end

  def update
  end

  def delete
  end

end
