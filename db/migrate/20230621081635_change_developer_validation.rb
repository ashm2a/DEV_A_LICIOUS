class ChangeDeveloperValidation < ActiveRecord::Migration[7.0]
  def change
    change_column :developers, :description, :text, limit: 100
  end
end
