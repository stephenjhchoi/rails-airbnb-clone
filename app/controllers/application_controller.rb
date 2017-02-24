class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  after_filter :store_location
  helper_method :booking_count

  def store_location
    # store last url as long as it isn't a /users path
    session[:previous_url] = request.fullpath unless request.fullpath =~ /\/users/
  end

  def after_sign_in_path_for(resource)
    session[:previous_url] || root_path
  end


  def booking_count
    @lessons = current_user.lessons
    counter = 0
    @lessons.each do |lesson|
    counter += 1 if lesson.booking
    end
    return counter

  end

end
