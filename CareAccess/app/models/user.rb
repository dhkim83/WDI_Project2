class User
  include Mongoid::Document
  include ActiveModel::SecurePassword
  validates_presence_of :name, :email
  
  field :name, type: String
  field :email, type: String
  field :password_digest, type: String 

  has_secure_password
  # field :is_admin, type: Boolean

	has_many :pairings

# accepts_nested_attributes_for :hospitals 
# validates :name, presence: true

#   validates :email, presence: true
#   validates_uniqueness_of :email

end 


# def pairings
#     Pairings.find pairing_ids
#   end

#  def pairing_ids
#     ret = []
#     self.user_pairings.each do |p|
#       ret << p.pairing_id if p.pairing_id

# # def pairing_ids
# # 	self.user_pairings.map (&:hospital_id)
# # end
#     end
#   

#   def pairing_ids=(list)
#     self.user_pairings.destroy
#     list.each do |pairing_id|
#       self.user_pairings.create(pairing_id: pairing_id)
#     end
#   end

  
