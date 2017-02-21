class LessonsController < ApplicationController
  before_action :set_lesson, only: :show
  #before_action :set_lessons, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  def index
    @lessons = Lesson.all
  end

  def show
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)
    if @lesson.save
      redirect_to lessons_path
    else
      render :new
    end
  end

  # def edit
  # end

  # def update
  #   if @lesson.update(lesson_params)
  #     redirect_to lessons_path
  #   else
  #     render :edit
  #   end
  # end

  # def destroy
  #   @lesson.destroy
  #   redirect_to lessons_path
  # end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:category, :price, :start_date_time, :duration, :description, :neighborhood)
  end

end
