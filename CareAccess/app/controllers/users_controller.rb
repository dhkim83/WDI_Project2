class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /names
  # GET /names.json
  def index
    user_filter = params[:selectionfilter]
    case user_filter 
    when "primary_care"
    @users = User.all(:selection => "primary_care")
  when "registered_nurse"
    @users = User.where(:selection => "registered_nurse")
  when "state_loan_repayment"
    @users = User.where(:selection => "NHSC_loan_repayment")
  when "NHSC_loan_repayment"
    @users = User.where(:selection => "state_loan_repayment")
  when "location"
    @users = User.where(:selection => "location")
  else
    @users = User.all 
  end 
  end

  

  # GET /names/1
  # GET /names/1.json
  def show
    @user = User.find(params[:id]) 
  end

  # GET /names/new
  def new
    @user = User.new
  end

  # GET /names/1/edit
  def edit
    @user = User.find(params[:id])
  end
  

  # POST /names
  # POST /names.json
  def create
    @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  # PATCH/PUT /names/1
  # PATCH/PUT /names/1.json
  def update
    @user = User.find(params[:id])
      if @user.update_attributes(params.require(:user).permit(:name, :email, :password,  :password_confirmation))
        redirect_to users_path
      else
        render 'edit' 
       end
    end
  end


  

  # DELETE /names/1
  # DELETE /names/1.json
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

def destroy
      @user = User.find(params[:id])
      @user.is_active = false
      @user.save
      redirect_to users_path
  end

  def reactivate 
    @user =User.find(params[:id])
    # @user.is_active = true 
  end   

end


    # Never trust parameters from the scary internet, only allow the white list through.
#     def user_params
#       params.require(:user).permit(:option, :branch_of_medicine, :review, :doc_preference)
#     end
# end
