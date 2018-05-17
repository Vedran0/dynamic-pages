class PagesController < ApplicationController
	before_action :set_layout

  def public_procurement
  end

  def public_relations
  end

  def set_layout

    @scope = action_name
    @page_navigation_links = PageLink.where(scope: action_name)
    @sub_layout = "layouts/sub_layouts/#{action_name}"
  end

end
