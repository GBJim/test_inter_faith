module StoriesHelper

	def render_photo(image)
		if image.present?
			image_tag image.url(:thumb)
		else
			image_tag "/assets/religions/leaves.jpg" , :size => "300x300"
		end
	end

	def render_content(content, length = 100)
		content[0..length]
	end


end
