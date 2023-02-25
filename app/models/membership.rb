class Membership < ApplicationRecord
    belongs_to :client 
    belongs_to :gym

    validates :gym, uniqueness: { scope: :client}

end