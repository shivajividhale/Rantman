class AddValueToRants < ActiveRecord::Migration[5.0]
  def change
    add_column :rants, :value, :string
  end
end
