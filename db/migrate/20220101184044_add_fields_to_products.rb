class AddFieldsToProducts < ActiveRecord::Migration[6.1]
  def change
    
    add_column :users, :first_name, :last_name, :description, :email, :age

  end
end
