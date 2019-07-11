class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  include AttendancesHelper
   def edit
    @user = User.find(params[:id])
    @first_day = Date.parse(params[:date])
   end
end
