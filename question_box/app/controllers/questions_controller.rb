class QuestionsController < ApplicationController

  def index
    @questions = Question.page(params[:page]).per(5)
  end
  
  def new
   @question = Question.new
  end

  def create
   @question = Question.new(question_params)

   if @question.save
    redirect_to @question
   else
    render "new"
   end
  end

  def show

    @questions = Question.page(params[:page]).per(15)

  end

  def update
  end

  def destroy
  end

  private

  def question_params
   params.require(:question).permit(:title, :content, :user_id, :tag_id, :rating)
  end
end
