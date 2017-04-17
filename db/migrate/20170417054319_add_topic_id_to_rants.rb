class AddTopicIdToRants < ActiveRecord::Migration[5.0]
  def change
    add_foreign_key :rants, :topics
  end
end
