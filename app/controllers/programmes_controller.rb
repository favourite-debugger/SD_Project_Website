class ProgrammesController < ApplicationController
  before_action :authenticate_admin! #kameron: definition found in application_controller.rb
  def index

   

      @programmes_array=[["001","Forensics"],["002","Clinical Skills"],["003","Internal Medicine"],["004","Surgery"],["005","Psychiatry"]]


  end
end
