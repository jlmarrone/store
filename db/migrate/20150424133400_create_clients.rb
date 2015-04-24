class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :email
      t.string :address
      t.date :birthdate
      t.date :paymentdate

      t.timestamps
    end
  end
end
