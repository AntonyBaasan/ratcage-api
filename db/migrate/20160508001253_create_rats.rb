class CreateRats < ActiveRecord::Migration[5.0]
  def change
    create_table :rats do |t|
      t.string :name
      t.text :description
      t.text :spec_content
      t.string :link_to_result

      t.timestamps
    end
  end
end
