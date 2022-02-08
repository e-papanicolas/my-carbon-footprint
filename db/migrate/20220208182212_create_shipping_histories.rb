class CreateShippingHistories < ActiveRecord::Migration[7.0]
  def change
    create_table :shipping_histories do |t|
      t.string :date
      t.integer :weight
      t.integer :distance
      t.string :method
      t.float :carbon_lb
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
