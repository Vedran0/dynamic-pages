module PageLinksHelper
	def compose_path(link)
		link_to link.name, [link.scope, link.resource, eval("link.#{link.resource.singularize}.id").to_s].join("/")
	end
end
