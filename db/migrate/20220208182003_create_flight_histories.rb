class CreateFlightHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :flight_histories do |t|
      t.string :date
      t.integer :passengers
      t.string :departure
      t.string :destination
      t.float :carbon_lb
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
