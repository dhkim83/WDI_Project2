class Pairing
  include Mongoid::Document
  belongs_to :user
  belongs_to :hospital
end


# class Pairing
#   include Mongoid::Document
#   field :rating, type: Integer
#   belongs_to :bean
#   belongs_to :pastry
# end

