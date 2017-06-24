class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone
      t.string :email
      t.string :address1
      t.string :address2

      t.timestamps
    end
  end
end
