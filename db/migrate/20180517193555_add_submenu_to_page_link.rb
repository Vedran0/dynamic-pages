class AddSubmenuToPageLink < ActiveRecord::Migration[5.1]
  def change
    add_column :page_links, :submenue, :boolean
  end
end
