class BlocksController < ApplicationController
  def index

  	#SEARCH BAR CODE 
  	#ONLY CHANGE THIS TO DATABASE DATA IN 3D ARRAY FORMAT!!
  	@db_data=[["1","1-May-2021","1-June-2021"],["2","1-July-2021","1-August-2021"],["3","1-September-2021","1-October-2021"]]


  	#Format is [[index],[start date],[end date]]
  	#DON'T CHANGE BELOW CODE!!==========================
  	
  	@data = params[:searchBlocks]
  	if @data.blank?
  		@blocks_array=@db_data
  	else	
  		@blocks_array=@db_data.select{|(x, y,z)| x == @data}
  	end

  	#===================================================
  	
  end
end
