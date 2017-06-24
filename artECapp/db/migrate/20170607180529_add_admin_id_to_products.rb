class AddAdminIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_reference :products, :admin, foreign_key: true
  end
end
