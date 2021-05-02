class ApplicationController < ActionController::Base


  protected
  def authenticate_admin!
    if admin_signed_in?
      #redirect_to authenticated_root_path
    else
      redirect_to unauthenticated_root_path, :notice => 'Please sign in to continue'
      ## if you want render 404 page
      ## render :file => File.join(Rails.root, 'public/404'), :formats => [:html], :status => 404, :layout => false
    end
  end
end
