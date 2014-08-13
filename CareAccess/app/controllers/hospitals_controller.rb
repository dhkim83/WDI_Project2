 class HospitalsController < ApplicationController

  
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
  @hospitals = Hospital.all.sort_by {|h| h.name[0]}

  
when "location"
  @hospitals = Hospital.where(:name => "location")
  @hospitals = Hospital.all.sort_by {|l| l.location[0]}
  
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
end 

# when "arleta"
#   @hospitals = Hospital.where(:location => "arleta")

# when "pacoima"
#   @hospitals = Hospital.where(:location => "pacoima")

# when "san fernando"
#   @hospitals = Hospital.where(:location => "san fernando")

# when "bell"
#   @hospitals = Hospital.where(:location => "bell")

# when "val verde"
#   @hospitals = Hospital.where(:location => "val verde")

# when "el monte"
#   @hospitals = Hospital.where(:location => "el monte")

# when "los angeles"
#   @hospitals = Hospital.where(:location => "los angeles")

# when "hungtington park"
#   @hospitals = Hospital.where(:location => "hungtington park")

# when "hollywood"
#   @hospitals = Hospital.where(:location => "hollywood")

# when "long beach"
#   @hospitals = Hospital.where(:location => "long beach")

# when "north hollywood"
#   @hospitals = Hospital.where(:location => "north hollywood")

# when "sun valley"
#   @hospitals = Hospital.where(:location => "sun valley")

# when "pico rivera"
#   @hospitals = Hospital.where(:location => "pico rivera")

# when "pomona"
#   @hospitals = Hospital.where(:location => "pomona")

# when "venice"
#   @hospitals = Hospital.where(:location => "venice")

# when "santa monica"
#   @hospitals = Hospital.where(:location => "santa monica")

# when "culver city"
#   @hospitals = Hospital.where(:location => "culver city")

