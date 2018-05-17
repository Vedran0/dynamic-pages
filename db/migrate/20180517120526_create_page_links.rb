class CreatePageLinks < ActiveRecord::Migration[5.1]
  def change
    create_table :page_links do |t|
      t.string :scope
      t.string :name
      t.integer :position

      t.timestamps
    end
  end
end
