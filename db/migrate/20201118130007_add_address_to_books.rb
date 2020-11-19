class AddAddressToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :address, :text
  end
end
