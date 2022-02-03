class AddColumnsToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :campus, :string
    add_column :users, :subscribed, :boolean, default: true
    add_column :users, :collect_data, :boolean
    add_column :users, :accept_cgv, :boolean
  end
end
