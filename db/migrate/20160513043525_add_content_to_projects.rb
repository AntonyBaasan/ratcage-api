class AddContentToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :content, :text
  end
end
