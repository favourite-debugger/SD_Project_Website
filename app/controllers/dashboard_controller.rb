class DashboardController < ApplicationController
  def index
    @hospitals = Hospital.all
    @specialties = Specialty.all
    @allocations = Allocation.all

    if (params[:hospital_id])
      @current_hospital_id =  params[:hospital_id]
  #else
  end
  end
end
