class AddPageLinkIdToDocument < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :page_link_id, :integer
  end
end
