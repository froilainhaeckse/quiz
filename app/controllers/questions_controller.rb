class QuestionsController < ApplicationController
  def question_params
    params.require(:question).permit(:title, :lover, :answer)
  end

  def show
    @questions = Question.all
    @question = Question.find(params[:id])
  end

  def update
    @questions = Question.all
    if params[:answer] == nil then
      reset_questions
      redirect_to Question.find(params[:id])
    else
      save_answer
      redirect_to Question.find(new_question)
    end
  end

  def reset_questions
    @questions.each do |question|
      question.update(answer: nil)
    end
  end

  def new_question
    newquestion = rand(1..@questions.size)
    until Question.find(newquestion).answer == nil
      newquestion = rand(1..@questions.size)
    end
    newquestion
  end

  def save_answer
    @question = Question.find(params[:id])
    @question.update(answer: params[:answer])
  end


end
