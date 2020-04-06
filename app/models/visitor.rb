class Visitor < ApplicationRecord
    belongs_to :user
    has_many :posts , dependent: :destroy

    validates :FullName, presence: true , length: { minimum: 6, too_short: "must have at least %{count} words" }
    validates :Phone_no, presence: true 
    validates :BirthDay, presence: true

end
