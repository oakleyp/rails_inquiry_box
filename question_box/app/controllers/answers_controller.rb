class AnswersController < ApplicationController
  def new
		@answer = Answer.new
  end

  def create
		@answer = Answer.new(answer_params)
		@answer[:rating] = 0
		@answer[:correct] = false
		if @answer.save
			redirect_to @answer, notice: 'Answer was successfully created.'
		else
			render 'new'
		end
  end

  def show
  end

  def update
		if @answer.update(answer_params)
			redirect_to @answer
		else
			render 'edit'
		end
  end

  def destroy
		@answer.destroy
	  redirect_to answers_show_path, notice: 'Answer was successfully deleted.'
  end
	
	private
	
	def set_answer
		@answer = Answer.find(params[:id])
	end
	
	def answer_params
      params.require(:answer).permit(:content)
  end
end
