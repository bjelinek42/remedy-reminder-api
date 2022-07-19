class ChangeTypeToKind < ActiveRecord::Migration[7.0]
  def change
    remove_column :remedies, :type
    add_column :remedies, :kind, :string
  end
end
