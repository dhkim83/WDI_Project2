class User
  include Mongoid::Document
  include ActiveModel::SecurePassword 
  validates_presence_of :primary_care, :registered_nurse,  :location, :state_loan_repayment, :NHSC_loan_repayment , 
  
  field :location, type: String 
  field :primary_care, type: String
  field :registered_nurse, type: String
  field :state_loan_repayment, type: String
  field :NHSC_loan_repayment, type: String 
  field :password_digest, type: String 

  has secure_password
end	