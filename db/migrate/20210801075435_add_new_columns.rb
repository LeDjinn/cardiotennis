class AddNewColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :description2, :text
    add_column :programs, :descriptionobj, :text
  end
end
