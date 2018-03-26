class QuestionsController < ApplicationController
	before_action :authenticate_staff!

  def new
  	@question = Question.new
  end

  def create
  	@question = Question.new(question_params)
    @question.staff_id = current_staff.id
    if @question.save
      redirect_to qanda_path
    else
      render :new
    end
  end

  def edit
  	@question = Question.find(params[:id])
  end

  def update
  	@question = Question.find(params[:id])
    @question.staff_id = current_staff.id
    if @question.update(question_params)
      redirect_to qanda_path
    else
      render :template => "questions/edit"
    end
  end

  def destroy
  	@question = Question.find(params[:id])
    @question.destroy
    redirect_to qanda_path
  end

  private
    def question_params
      params.require(:question).permit(:question, :answer)
    end
end
