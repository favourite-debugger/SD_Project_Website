class SpecialtiesController < ApplicationController
  def index

    @db_data=[["001","Forensics"],["002","Clinical Skills"],["003","Internal Medicine"],["004","Surgery"],["005","Psychiatry"],["006","Anaesthetics"],["007","Public health"],["008","Obstetrics"],["009","Trauma"],["010","Gynae"]]
  
  
  
  
  #for the search button
   @data=params[:searchSpecialties]
   if @data.blank?
      @specialties_array=@db_data
   else 
      @specialties_array=@db_data.select{|(x,y)| y == @data}
   end

  
  
  end
end
