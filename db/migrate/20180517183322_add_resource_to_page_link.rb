class AddResourceToPageLink < ActiveRecord::Migration[5.1]
  def change
    add_column :page_links, :resource, :string
  end
end
