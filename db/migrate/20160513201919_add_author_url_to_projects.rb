class AddAuthorUrlToProjects < ActiveRecord::Migration[5.0]
  def change
    add_column :projects, :author_url, :string
  end
end
