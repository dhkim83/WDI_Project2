class AdminsController < ApplicationController
  def index
  	@admin = Admins.all
  end 

#     add_column :users, :admin, :boolean, default: false
#   end
# end

# def edit
#     @admin = Admin.find(params[:id])
#   end

#   def update
#     @admin = Admin.find(params[:id])
#     if @admin.update_attributes(admin_params)
#       redirect_to admins_path
#     else
#       render 'edit'
#     end
#   end