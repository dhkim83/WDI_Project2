class PairingsController < ApplicationController
  before_action :set_user, only: [:index, :show, :edit, :update, :destroy]

  def index
    @pairings = Pairing.all
    @pairing = Pairing.new 
  end 

  def update
    @pairing = Pairing.save
  redirect_to pairings_path
  end 

  def create
    Pairing.destroy_all
    params.each do |key,val|
      if key[0..6] == "checky_"
        pieces = key.split("_")
        Pairing.create(hospital_id: pieces[1], user_id: pieces[2]) unless val.blank?
      end
    end
#    pairing = Pairing.create(params.require(:pairing).permit(:bean_id, :pastry_id))
    redirect_to pairings_path
  end

#   def create

#     pairing = Pairing.create(params.require(:pairing).permit(:user_id, :hospital_id))
#     redirect_to pairings_path
#   end

# end


  def show
    @pairing = Pairing.find(params[:id]) 

# @pairing =Pairing.where(:name => "name")
  # @pairing = Pairing.all.order("name ASC")
    
  end

   def save
        create_or_update
      end
  
end 

  

  private

  def set_user
    if !current_user
      redirect_to hospitals_path
      end
    end
 


# else
#   render to 'show'
 # end 

# def create
# @pairing = Pairing.new(pairing_params)

#     respond_to do |format|
#       if @pairing.save
#         format.html { redirect_to @pairing, notice: 'Pairing was successfully created.' }
#         format.json { render action: 'show', status: :created, location: @pairing }
#       else
#         format.html { render action: 'new' }
#         format.json { render json: @pairing.errors, status: :unprocessable_entity }
#       end
#     end
#   end