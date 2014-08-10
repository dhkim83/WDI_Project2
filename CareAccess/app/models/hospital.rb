class Hospital
  include Mongoid::Document
   
  field :name, type: String 
  field :practice_field, type: String
  field :location, type: String
  field :benefit, type: String 
 
end