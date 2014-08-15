class UsersController < ApplicationController

# only: [:index, :show, :edit, :update, :destroy]

# before_action :signed_in_user, only: [:edit, :update]

  def index
    @users =User.all
  end
# ';'
  # GET /users/1
  # GET /users/1.json
    def show
      @user = User.find(params[:id]) 
    end

    # GET /users/new
    def new
      @user = User.new
      @is_signup = true
    end

  # GET /users/1/edit
    def edit
      @user = User.find(params[:id])
    end
    

  # POST /uers
  # POST /users.json
    def create
      @user = User.new(params.require(:user).permit(:name, :email, :password, :password_confirmation))
      if @user.save
        @current_user = @user
        session[:user_id] = @user.id
        redirect_to users_path
      else
        render 'new'
      end
    end

    

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
    def update
      @user = User.find(params[:id])
        if @user.update_attributes(params.require(:user).permit(:name, :email, :password,  :password_confirmation))
          redirect_to users_path
        else
          render 'edit' 
         end
      end
end 


  # private

  #   def user_params
  #     params.require(:user).permit(:name, :email, :password, :password_confirmation)
  #     pairing_ids [],
  #     hospitals_attributes: [:id, :name, :location, :practice_field, :benefit]
  #   end 
  # end 


 
  #   end














#     # Before filters

#     def signed_in_user
#       redirect_to signin_url, notice: "Please sign in." unless signed_in?
#     end
# end

  # DELETE /users/1
  # DELETE /users/1.json
  

  # private
  #   # Use callbacks to share common setup or constraints between actions.
  #   def set_user
  #     @user = User.find(params[:id])
  #   end

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



    # Never trust parameters from the scary internet, only allow the white list through.
#     def user_params
#       params.require(:user).permit(:option, :branch_of_medicine, :review, :doc_preference)
#     end

