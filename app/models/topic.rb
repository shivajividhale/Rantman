class Topic < ApplicationRecord
	# before_destroy :destroy_rants
	has_many :rants, dependent: :destroy
end
