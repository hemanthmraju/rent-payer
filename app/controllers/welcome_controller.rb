class WelcomeController < ApplicationController
	#before_filter :authenticate_user!
  	skip_before_filter :authenticate_user, :only => [:index]
  def index
  	
  end
end

