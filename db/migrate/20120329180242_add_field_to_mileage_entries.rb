class AddFieldToMileageEntries < ActiveRecord::Migration
  def change
    add_column :mileage_entries, :user_email, :string
    MileageEntry.update_all :user_email => 'john@thegranges.co.uk'
  end
end
