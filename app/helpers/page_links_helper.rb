module PageLinksHelper
	def scope_link(link)
		if link.has_related?
			"#{request.base_url}/#{@scope}/page_links/#{link.id}"
		else
			"#{request.base_url}/#{@scope}/#{link.path}"
		end
	end
end
