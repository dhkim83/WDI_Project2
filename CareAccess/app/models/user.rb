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


# validates :name, presence: true

#   validates :email, presence: true
#   validates_uniqueness_of :email

end 

