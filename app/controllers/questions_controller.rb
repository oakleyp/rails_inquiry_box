class QuestionsController < ApplicationController

  def index
    @questions = Question.page(params[:page]).per(5)
  end
  
  def new
   @question = Question.new
  end

  def create
    if logged_in?
      @question = Question.new(question_params)
      @question[:user_id] = session[:user_id]
      @question[:rating] = 0

      #Look up tag id or create new tag in tag db 
      tag = Tag.where({ name: params["question"]["tag_id"] }).first
      if(!tag.nil?)
        @question[:tag_id] = tag.id
      else
        newtag = Tag.new
        newtag.name = params["question"]["tag_id"]
        if newtag.save
          @question[:tag_id] = newtag.id
        else 
          #Yeah... something went wrong
          @question[:tag_id] = 1
        end
      end

      if @question.save
        redirect_to @question
      else
        flash.now.alert = 'Error creating question. One or more fields were left blank or are invalid.'
        render "new"
      end

    end
  end

  def show

    @question = Question.find(params[:id])
    @answer = @question.answers.build

  end

  def update
  end

  def destroy
  end

  private

  def question_params
   params.require(:question).permit(:title, :content, :tag_id)
  end
end
