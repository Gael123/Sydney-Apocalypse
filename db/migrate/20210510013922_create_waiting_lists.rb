class CreateWaitingLists < ActiveRecord::Migration[6.0]
  def change
    create_table :waiting_lists do |t|
      t.integer :number_of_pateients
      t.integer :pain_level
      t.integer :processing_time

      t.timestamps
    end
  end
end
