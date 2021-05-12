class HospitalsController < ApplicationController
  def index
  	
  	#SEARCH BAR CODE 
  	#ONLY CHANGE THIS TO DATABASE DATA IN 3D ARRAY FORMAT!!
  	@db_data=[["1","Helen Joseph"],["2","Bara"],["3","Charlotte Maxeke"]]


  	#Format is [[hospital ID], [hospital name]]
  	
  	#DON'T CHANGE BELOW CODE!!==========================
  	
  	@data = params[:searchHospitals]
  	if @data.blank?
	  	@hospitals_array=@db_data	
	else
	  	@hospitals_array=@db_data.select{|x,y| y.match(/#{@data}/) }	
	end

  	#===================================================
  end
end
