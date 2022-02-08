class CreateVehicleHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :vehicle_histories do |t|
      t.string :date
      t.integer :distance_value
      t.string :vehicle_make
      t.string :vehicle_model
      t.integer :vehicle_year
      t.float :carbon_lb
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
