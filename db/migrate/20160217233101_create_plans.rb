class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.integer :plan_price

      t.timestamps null: false
    end
  end
end
