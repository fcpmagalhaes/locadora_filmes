module FilmsHelper

	def imagem(film)
		if film.poster.blank?
			image_tag('no-image.png', width:'200')
		else
			image_tag(film.poster, width: '200')
		end
	end
end