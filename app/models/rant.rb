class Rant < ApplicationRecord
	belongs_to :topic, :foreign_key => :topic_id
end
