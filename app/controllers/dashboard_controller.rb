class DashboardController < ApplicationController
  def index
    @hospitals = Hospital.all
    @schedules = Schedule.all
  end
end
