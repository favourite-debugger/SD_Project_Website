class HomeController < ApplicationController
#--------------------------------------------------------------------------------------------------------------
# "before_action :authenticate_admin!" Must be added to any additional controllers for other webpages,
# but DO NOT add to the ApplicationController
before_action :authenticate_admin!
#----------------------------------------------------------------------------------------------------------------

  def index
  end
end
