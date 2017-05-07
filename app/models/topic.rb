class Topic < ApplicationRecord
	has_many :rants, dependent: :destroy
end
