class CreateRemedies < ActiveRecord::Migration[7.0]
  def change
    create_table :remedies do |t|
      t.integer :user_id
      t.string :name
      t.string :type
      t.string :timing_id
      t.date :start_date
      t.date :end_date
      t.string :dosage
      t.string :special_instructions

      t.timestamps
    end
  end
end
