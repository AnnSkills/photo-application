class AddPayedFieldsUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :mode, :string
    add_column :users, :subscription_status, :string, default: "incomplete"
  end
end
