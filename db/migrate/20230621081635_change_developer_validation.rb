class ChangeColumnTypeInTable < ActiveRecord::Migration[6.1]
  def change
    change_column :developers, :description, :text
  end
end
