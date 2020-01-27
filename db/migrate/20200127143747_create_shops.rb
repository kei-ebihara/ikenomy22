class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false, length: 50
      t.text :description, null: false, length: 1000
      t.string :phone_number, length: 15
      t.string :address, length: 100
      t.text :homepage, length: 1000
      t.text :business_hours, length: 200
      t.string :holiday, length: 50

      t.timestamps
    end
  end
end
