class AddRootToPageLink < ActiveRecord::Migration[5.1]
  def change
    add_column :page_links, :root, :boolean
  end
end
