class CreateElectricityHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :electricity_histories do |t|
      t.string :date
      t.string :country
      t.string :state
      t.integer :electricity_value
      t.float :carbon_lb
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
