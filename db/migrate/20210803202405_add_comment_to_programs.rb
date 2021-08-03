class AddCommentToPrograms < ActiveRecord::Migration[6.1]
  def change
    add_column :programs, :comment, :text
  end
end
