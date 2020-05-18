class ApplicationController < ActionController::Base
   rescue_from CanCan::AccessDenied do |exception|
     flash[:authorization_error] = "Not authorized to perform that action ❌"
     redirect_to books_path
   end 
end

