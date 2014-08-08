class Gov
  include Mongoid::Document
   
  
  field :primary_care, type: Float
  field :registered_nurse, type: String
  field :state_loan_repayment, type: String 
  field :NHSC_loan_repayment, type: String
end