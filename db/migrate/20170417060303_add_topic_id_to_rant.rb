class AddTopicIdToRant < ActiveRecord::Migration[5.0]
  def change
    add_column :rants, :topic_id, :integer
  end
end
