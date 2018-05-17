class AddPageLinkIdToAttachment < ActiveRecord::Migration[5.1]
  def change
    add_column :attachments, :page_link_id, :integer
  end
end
