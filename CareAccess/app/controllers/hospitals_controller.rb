 class HospitalsController < ApplicationController
before_action :check_user, only: [:new, :create, :edit, :update, :destroy]



  # def index
  #   @hospitals = Hospital.order ("hospital_name")
  # end 

def index
# @hospitals = Hospital.order("location", "name")

  my_hospital_filter = params[:hospitalfilter]
  case my_hospital_filter
  when "showall"
  @hospitals = Hospital.all

when "name"
  @hospitals =Hospital.where(:name => "name")
  @hospitals = Hospital.all.order("name ASC")
  
  
when "location"
  @hospitals = Hospital.where(:location => "location")
  @hospitals = Hospital.all.order("location ASC")
  
when "primary_care"
  @hospitals = Hospital.where(:practice_field => "primary_care")

when "registered_nurse"
  @hospitals = Hospital.where(:practice_field => "registered_nurse")

when "state"
  @hospitals = Hospital.where(:benefit => "state")

when "federal"
  @hospitals =Hospital.where(:benefit => "federal")

    else
  @hospitals = Hospital.all
  end 

  end

  def show
    @hospital = Hospital.find(params[:id]) 
  end

  def new
    @hospital = Hospital.new
  end

  def create 
    @hospital = Hospital.new(params.require(:hospital).permit(:name, :practice_field, :location, :benefit))
    if @hospital.save
      redirect_to hospitals_path
    else
      render 'new'
    end
  end

  def edit
    @hospital = Hospital.find(params[:id])
  end

  def update
    @hospital = Hospital.find(params[:id])
    if @hospital.update_attributes(hospital_params)
      redirect_to hospitals_path
    else
      render 'edit'
    end
  end


  

  def destroy
    @hospital = Hospital.find(params[:id])
    @hospital.destroy
    redirect_to hospitals_path
  end

  def hospital_params
    params.require(:hospital).permit(:name, :practice_field, :location, :benefit)

  end


private
  def check_user
    if ! current_user 
      redirect_to new_session_path
    end 
  end 
end 

