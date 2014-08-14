class PairingsController < ApplicationController

def index
	@pairings = Pairing.all
end 

def update
	
end 

def create
	current_user.pairings.create(hospital_id: params[:hospital_id])
	redirect_to users_path
end 




private
  def set_user
    if ! current_user 
      redirect_to hospitals_path
  	end	
  end
end 