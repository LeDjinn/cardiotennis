class ChangeValue < ActiveRecord::Migration[6.1]
  def change
    rename_column :programs, :week, :semaine
  end
end
