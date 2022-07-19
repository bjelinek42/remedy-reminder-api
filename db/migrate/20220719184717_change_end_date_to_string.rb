class ChangeEndDateToString < ActiveRecord::Migration[7.0]
  def change
    remove_column :remedies, :end_date
    add_column :remedies, :end_date, :string
  end
end
