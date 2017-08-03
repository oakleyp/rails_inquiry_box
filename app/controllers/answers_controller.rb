class AnswersController < ApplicationController
  def new
		@answer = Answer.new
  end

  def create
		p params
		if current_user
		@answer = Answer.new(answer_params)
		@answer[:question_id] = params["answer"]["question"].to_i
		#@answer = @question.answers.new(answer_params)
		@answer.user_id = current_user
		@answer[:rating] = 0
		@answer[:is_valid] = false
		@answer[:user_id] = current_user.id
		@answer[:tag_id] = 1
		
		if @answer.save
			redirect_to @answer, notice: 'Answer was successfully created.'
		else
			render 'new'
		end
			
		end
  end

  def show
    @answer = Answer.find(params[:id])
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
