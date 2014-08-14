module StoriesHelper

	def render_photo(image, attribute ="")
		if image.present?
			image_tag image.url(:thumb), :class => attribute
		else
			image_tag "/assets/religions/leaves.jpg" , :size => "300x300", :class => attribute
		end
	end

	def render_content(content, length = 70)
		content = strip_tags content
		content[0..length] + "..."
	end


end
