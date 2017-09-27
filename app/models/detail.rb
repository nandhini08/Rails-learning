class Detail < ApplicationRecord
	has_many :comments
	validates :Address, presence: true,
                    length: { minimum: 5 }
end
