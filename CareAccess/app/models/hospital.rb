class Hospital
  include Mongoid::Document
   
  field :name, type: String 
  field :practice_field, type: String
  field :location, type: String
  field :benefit, type: String 
  
  has_many :pairings

 end 



# 	# Bring back an array of hospitals
#   def hospitals
#   	Hospital.find hospital_ids
#   end

# #   # Bring back an array of all hospital IDs
#   def hospital_ids
#   	self.user_hospitals.map(&:hospital_id)
#   end

# #   # Update hospital IDs for this user
#   def hospital_ids=(list)
#   	self.user_hospitals.destroy
#   	list.each do |hospital_id|
#   		unless hospital_id.blank?
#   			self.user_hospitals.create(hospital_id: hospital_id)
#   		end
#   	end
#   
# end
#---------------------------------------------------

