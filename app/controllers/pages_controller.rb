class PagesController < ApplicationController
	before_action :set_layout

  def public_procurement
  end

  def public_relations
  end

  def set_layout
    @scope = action_name
    @page_navigation_link = PageLink.where(scope: action_name).where(root: true).first
    @dynamic_nav = true
  end

end
