class DashboardController < ApplicationController
  def index
    @hospitals = Hospital.all
    @specialties = Specialty.all
    @allocations = Allocation.all
  end
end
