class Detail < ApplicationRecord
	has_many :comments,  dependent: :destroy
	validates :Address, presence: true,
                    length: { minimum: 5 }
end
