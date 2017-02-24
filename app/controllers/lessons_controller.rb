class LessonsController < ApplicationController
  before_action :set_lesson, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index,:show]

  def index
    @lessons = Lesson.all
    @lessons = @lessons.where(neighborhood: params[:neighborhood]) if !params[:neighborhood].blank?
    @lessons = @lessons.where(category: params[:category]) if !params[:category].blank?
    @lessons = @lessons.where("Date(start_date_time) >= ?", Date.parse(params[:date])) if params[:date]
    @hash = Gmaps4rails.build_markers(@lessons) do |lesson, marker|
      marker.lat lesson.latitude
      marker.lng lesson.longitude
          # marker.infowindow render_to_string(partial: "/flats/map_box", locals: { flat: flat })
    end
  end

  def show
    @booking = Booking.new
  end

  def new
    @lesson = Lesson.new
  end

  def create
    @lesson = current_user.lessons.build(lesson_params)
    if @lesson.save
      redirect_to lessons_path
    else
    end
  end

  def edit
  end

  def update
    if @lesson.update(lesson_params)
      redirect_to lessons_path
    else
      render :edit
    end
  end

  def destroy
    @lesson.destroy
    redirect_to lessons_path
  end

  private

  def set_lesson
    @lesson = Lesson.find(params[:id])
  end

  def lesson_params
    params.require(:lesson).permit(:category, :price, :start_date_time, :duration, :description, :neighborhood)
  end

end
