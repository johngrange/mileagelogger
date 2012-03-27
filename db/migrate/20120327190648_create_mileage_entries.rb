class CreateMileageEntries < ActiveRecord::Migration
  def change
    create_table :mileage_entries do |t|
      t.decimal :litres
      t.integer :tripMileage
      t.integer :odometer
      t.decimal :cost
      t.decimal :mpg

      t.timestamps
    end
  end
end
