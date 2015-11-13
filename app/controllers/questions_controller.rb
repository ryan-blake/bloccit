class QuestionController < ApplicationController


  def resolved
    @question = resolved.true
  end
  def new
    @question = Question.new
  end


  def create
    @question = question.new
    @question.title = params[:Question][:title]
    @question.body = params[:Question][:body]

    if @question.save

      flash[:notice] = "Question was saved."
      redirect_to @question
    else

      flash[:error] = "There was an error saving the question. Please try again."
      render :new
    end
  end


  def update
    @question = Question.find(params[:id])
    @question.title = params[:question][:title]
    @question.body = params[:question][:body]

    if @question.save
      flash[:notice] = "Question was updated"
      redirect_to @question
    else
      flash[:error] = "There was an error saving the question. Please try again."
      render :edit
    end
  end


  def edit
    @question = question.find(params[:id])
  end


  def destroy
    @question = Question.find(params[:id])

    if @question.destroy
      flash[:notice] = "\"#{@question.title}\" was deleted successfully."
      redirect_to questions_path
    else
      flash[:error] = "There was an error deleting the question."
      render :show
    end
  end


  def index
    @question = Question.all
  end


  def show
    @question = question.find(params[:id])
  end
end
