class GovsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /names
  # GET /names.json
  def index
    gov_filter = params[:selectionfilter]
    case gov_filter 
    when "unfilled_location"
      @govs =Gov.where(:selection => "unfilled_location")
    when "primary_care"
    @govs = Gov.all(:selection => "primary_care")
  when "registered_nurse"
    @govs = Gov.where(:selection => "registered_nurse")
  when "NHSC_loan_repayment"
    @gov = Gov.where(:selection => "NHSC_loan_repayment")
  when "state_loan_repayment"
    @gov = Gov.where(:selection => "state_loan_repayment")
  else
    @govs = Gov.all 
  end 
  end

  

  # GET /names/1
  # GET /names/1.json
  def show
    @gov = Gov.find(params[:id]) 
  end

  # GET /names/new
  def new
    @gov = Gov.new
  end

  # GET /names/1/edit
  def edit
    @gov = Gov.find(params[:id])
  end
  

  # POST /names
  # POST /names.json
  def create
    @gov = Gov.new(params.require(:gov).permit(:name, :email, :password, :password_confirmation))
    if @gov.save
      redirect_to govs_path
    else
      render 'new'
    end
  end

  # PATCH/PUT /names/1
  # PATCH/PUT /names/1.json
  def update
    respond_to do |format|
      if @gov.update(gov_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @gov.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /names/1
  # DELETE /names/1.json
  

#   private
#     # Use callbacks to share common setup or constraints between actions.
#     def set_user
#       @user = User.find(params[:id])
#     end

# def destroy
#       @user = User.find(params[:id])
#       @user.is_active = false
#       @user.save
#       redirect_to users_path
#   end

#   def reactivate 
#     @user =User.find(params[:id])
#     # @user.is_active = true 
#   end

# end


    # Never trust parameters from the scary internet, only allow the white list through.
#     def user_params
#       params.require(:user).permit(:option, :branch_of_medicine, :review, :doc_preference)
#     end
# end
