class Pairing
  include Mongoid::Document
	field :name, type: String 
  	field :password, type: String

	belongs_to :user
  	belongs_to :hospital
end
