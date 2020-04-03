class Visitor < ApplicationRecord
    has_many :posts , dependent: :destroy
end
