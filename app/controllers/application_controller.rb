class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  # Verify user is logged in
    def logged_in_using_omniauth?
      unless session[:userinfo].present?
        flash.now[:warning] = "You must log in to access this site."
        redirect_to(:controller => "order_summaries", :action => "login")
        return false
      else
        return true
        #if request.original_url == "https://goverlan-order-summaries.herokuapp.com/"
          #do nothing
        #else
          #flash.now[:warning] = "You must log in to access this site."
          #render 'login'
        #end
        # Redirect to page that has the login here
      end
    end
end
