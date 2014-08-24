class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
   helper_method :sort_column, :sort_direction
   protect_from_forgery with: :exception
   
   def sort_direction  
        %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"
    end 
end
