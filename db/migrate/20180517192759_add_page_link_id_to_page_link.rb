class AddPageLinkIdToPageLink < ActiveRecord::Migration[5.1]
  def change
    add_column :page_links, :page_link_id, :integer
  end
end
